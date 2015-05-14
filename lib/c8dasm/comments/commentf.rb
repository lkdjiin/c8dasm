module C8dasm

  class Commentf < CommentBase

    def to_s
      case kk
      when '07'
        "Set V#{x} = delay timer value."
      when '0a'
        "Wait key press, store its value in V#{x}."
      when '15'
        "Set delay timer = V#{x}."
      when '18'
        "Set sound timer = V#{x}."
      when '1e'
        "Set I = I + V#{x}."
      when '29'
        "Set I = location of sprite for digit V#{x}."
      when '33'
        "Store BCD of V#{x} at I, I+1, and I+2."
      when '55'
        "Store registers V0..V#{x} starting at I."
      when '65'
        "Load registers V0..V#{x} starting from I."
      end
    end

  end
end

