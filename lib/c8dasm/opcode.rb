module C8dasm

  # Represents an opcode, in the sense of a disassembly file.
  #
  # Examples
  #
  #   o = Opcode.new('a21e')
  #   o.line     #=> '200:a21e  LD I, 21e  ;Puts 21e into register I.'
  #
  #   o.opcode   #=> 'a21e'
  #   o.assembly #=> 'LD I, 21e'
  #   o.comment  #=> 'Puts 21e into register I.'
  #   o.address  #=> '200'
  class Opcode

    # Creates a new Opcode instance.
    #
    # opcode  - The String opcode to represents.
    # address - The Fixnum address of this opcode. Default is 0x200.
    def initialize(opcode, address: 0x200)
      @assembly = Assembly.new(opcode).to_s
      @opcode = opcode
      @comment = Comment.new(opcode).to_s
      @address = sprintf("%03x", address)
      @line = "#@address:#@opcode  " +
              sprintf("%-14s", @assembly) +
              ";#@comment"
    end

    attr_reader :opcode, :assembly, :comment, :address, :line

  end

end
