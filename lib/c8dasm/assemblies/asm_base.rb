module C8dasm

  class AsmBase

    def initialize(opcode)
      @opcode = opcode
    end

    def nnn
      @opcode[1, 3]
    end

    def kk
      @opcode[2, 2]
    end

    def x
      @opcode[1]
    end

    def y
      @opcode[2]
    end

  end
end
