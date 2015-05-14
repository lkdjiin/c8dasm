module C8dasm

  class Asmd < AsmBase

    def to_s
      "DRW V#{x}, V#{y}, #{@opcode[3]}"
    end

  end
end

