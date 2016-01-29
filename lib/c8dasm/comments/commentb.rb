module C8dasm

  class Commentb < CommentBase

    def to_s
      "Jump to location #{nnn} + V0."
    end

  end

end

