module C8dasm

  class Asm4 < AsmBase

    def to_s
      "SNE V#{x}, #{kk}"
    end
  end
end
