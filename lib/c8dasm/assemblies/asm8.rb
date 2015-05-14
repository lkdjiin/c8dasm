module C8dasm

  class Asm8 < AsmBase

    def to_s
      case last_opcode
      when '0' then "LD V#{x}, V#{y}"
      when '2' then "AND V#{x}, V#{y}"
      when '4' then "ADD V#{x}, V#{y}"
      when '5' then "SUB V#{x}, V#{y}"
      end
    end

    def last_opcode
      @opcode[3]
    end

  end
end

