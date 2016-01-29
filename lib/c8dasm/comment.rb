module C8dasm

  class Comment

    def initialize(opcode)
      @opcode = opcode
      @comment = build_comment.to_s || '***WARNING*** UNKNOWN INSTRUCTION!'
    end

    def to_s
      @comment
    end

    private

    def build_comment
      klass = Kernel.const_get('Comment' + @opcode[0])
      klass.new(@opcode)
    end

  end

end
