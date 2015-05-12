module C8dasm

  # Represents an opcode, in the sense of a disassembly file.
  #
  # Examples
  #
  #   o = Opcode.new('a21e')
  #   o.opcode   #=> 'a21e'
  #   o.assembly #=> 'LD I, 21e'
  #   o.comment  #=> 'Puts 21e into register I.'
  #   o.address  #=> '200'
  #   o.line     #=> '200:a21e  LD I, 21e  ;Puts 21e into register I.'
  class Opcode

    # Creates a new Opcode instance.
    #
    # opcode  - The String opcode to represents.
    # address - The Fixnum address of this opcode. Default is 0x200.
    def initialize(opcode, address: 0x200)
      @opcode = opcode
      @assembly = compute_assembly || ''
      @comment = compute_comment || 'WARNING: Unknown instruction!'
      @address = sprintf("%03x", address)
      @line = "#@address:#@opcode  " + sprintf("%-14s", @assembly) +
              ";#@comment"
    end

    attr_reader :opcode, :assembly, :comment, :address, :line

    private

    def compute_assembly
      case @opcode[0]
      when '0'
        if @opcode == '00ee'
          "RET"
        end
      when '1' then "JP #{@opcode[1, 3]}"
      when '2' then "CALL #{@opcode[1, 3]}"
      when '3' then "SE V#{@opcode[1]}, #{@opcode[2, 2]}"
      when '4' then "SNE V#{@opcode[1]}, #{@opcode[2, 2]}"
      when '6' then "LD V#{@opcode[1]}, #{@opcode[2, 2]}"
      when '7' then "ADD V#{@opcode[1]}, #{@opcode[2, 2]}"
      when '8'
        if @opcode[3] == '2'
          "AND V#{@opcode[1]}, V#{@opcode[2]}"
        elsif @opcode[3] == '4'
          "ADD V#{@opcode[1]}, V#{@opcode[2]}"
        end
      when 'a' then "LD I, #{@opcode[1, 3]}"
      when 'c' then "RND V#{@opcode[1]}, #{@opcode[2, 2]}"
      when 'd' then "DRW V#{@opcode[1]}, V#{@opcode[2]}, #{@opcode[3]}"
      when 'e'
        if @opcode[2, 2] == 'a1'
          "SKNP V#{@opcode[1]}"
        end
      when 'f'
        if @opcode[2, 2] == '18'
          "LD ST, V#{@opcode[1]}"
        elsif @opcode[2, 2] == '29'
          "LD F, V#{@opcode[1]}"
        elsif @opcode[2, 2] == '33'
          "LD B, V#{@opcode[1]}"
        elsif @opcode[2, 2] == '65'
          "LD V#{@opcode[1]}, [I]"
        end
      end
    end

    def compute_comment
      case @opcode[0]
      when '0'
        if @opcode == '00ee'
          "Returns from this subroutine."
        end
      when '1'
        "Jump to location #{@opcode[1, 3]}."
      when '2'
        "Call subroutine at #{@opcode[1, 3]}."
      when '3'
        "Skip next instruction if V#{@opcode[1]} = #{@opcode[2, 2]}."
      when '4'
        "Skip next instruction if V#{@opcode[1]} != #{@opcode[2, 2]}."
      when '6'
        "Puts the value #{@opcode[2, 2]} into register V#{@opcode[1]}."
      when '7'
        "V#{@opcode[1]} = V#{@opcode[1]} + #{@opcode[2, 2]}."
      when '8'
        if @opcode[3] == '2'
          "Set V#{@opcode[1]} = V#{@opcode[1]} AND V#{@opcode[2]}."
        elsif @opcode[3] == '4'
          "Set V#{@opcode[1]} = V#{@opcode[1]} + V#{@opcode[2]}, " +
          "set VF = carry."
        end
      when 'a'
        "Puts #{@opcode[1, 3]} into register I."
      when 'c'
        "Puts random byte AND #{@opcode[2, 2]} into register V#{@opcode[1]}."
      when 'd'
        "Draws #{@opcode[3]}-byte sprite from I " +
        "at (V#{@opcode[1]}, V#{@opcode[2]})"
      when 'e'
        if @opcode[2, 2] == 'a1'
          "Skip next inst. if V#{@opcode[1]} key is not pressed."
        end
      when 'f'
        if @opcode[2, 2] == '18'
          "Set sound timer = V#{@opcode[1]}."
        elsif @opcode[2, 2] == '29'
          "Set I = location of sprite for digit V#{@opcode[1]}."
        elsif @opcode[2, 2] == '33'
          "Store BCD of V#{@opcode[1]} at I, I+1, and I+2."
        elsif @opcode[2, 2] == '65'
          "Load registers V0..V#{@opcode[1]} starting from I."
        end
      end
    end

  end

end
