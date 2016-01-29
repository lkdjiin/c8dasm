module C8dasm

  class Comment5 < CommentBase

    def to_s
      "Skip next instruction if V#{x} = V#{y}."
    end

  end

end

