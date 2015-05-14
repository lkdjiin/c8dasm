module C8dasm

  class Asme < AsmBase

    def to_s
      if kk == 'a1'
        "SKNP V#{x}"
      elsif kk == '9e'
        "SKP V#{x}"
      end
    end

  end
end


