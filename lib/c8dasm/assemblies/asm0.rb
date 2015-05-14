module C8dasm

  class Asm0 < AsmBase

    def to_s
      if @opcode == '00ee'
        "RET"
      elsif @opcode == '00e0'
        "CLS"
      end
    end

  end
end

