module C8dasm

  class Asmf < AsmBase

    def to_s
      case kk
      when '07' then "LD V#{x}, DT"
      when '0a' then "LD V#{x}, KEY"
      when '15' then "LD DT, V#{x}"
      when '18' then "LD ST, V#{x}"
      when '1e' then "ADD I, V#{x}"
      when '29' then "LD F, V#{x}"
      when '33' then "LD B, V#{x}"
      when '55' then "LD [I], V#{x}"
      when '65' then "LD V#{x}, [I]"
      end
    end

  end
end
