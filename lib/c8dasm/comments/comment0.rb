module C8dasm

  class Comment0 < CommentBase

    def to_s
      if @opcode == '00ee'
        "Returns from this subroutine."
      elsif @opcode == '00e0'
        "Clear the display."
      end
    end

  end
end
