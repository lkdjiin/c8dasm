module C8dasm

  class Commentd < CommentBase

    def to_s
      "Draws #{@opcode[3]}-byte sprite from I at (V#{x}, V#{y})"
    end

  end
end

