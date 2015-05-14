module C8dasm

  class Comment3 < CommentBase

    def to_s
      "Skip next instruction if V#{x} = #{kk}."
    end

  end
end

