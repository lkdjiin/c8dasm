module C8dasm

  class Comment8 < CommentBase

    def to_s
      case @opcode[3]
      when '0'
        "Set V#{x} = V#{y}."
      when '2'
        "Set V#{x} = V#{x} AND V#{y}."
      when '3'
        "Set V#{x} = V#{x} XOR V#{y}."
      when '4'
        "Set V#{x} = V#{x} + V#{y}, set VF = carry."
      when '5'
        "Set V#{x} = V#{x} - V#{y}, set VF = NOT borrow."
      end
    end

  end
end
