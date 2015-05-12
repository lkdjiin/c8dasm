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
      @assembly = compute_assembly
      @comment = compute_comment
      @address = sprintf("%03x", address)
      @line = "#@address:#@opcode  #@assembly  ;#@comment"
    end

    attr_reader :opcode, :assembly, :comment, :address, :line

    private

    def compute_assembly
      case @opcode[0]
      when 'a' then "LD I, #{@opcode[1, 3]}"
      when 'c' then "RND V#{@opcode[1]}, #{@opcode[2, 2]}"
      else
        ''
      end
    end

    def compute_comment
      case @opcode[0]
      when 'a'
        "Puts #{@opcode[1, 3]} into register I."
      when 'c'
        "Puts random byte AND #{@opcode[2, 2]} into register V#{@opcode[1]}."
      else
        'WARNING: Unknown instruction!'
      end
    end

  end

end
