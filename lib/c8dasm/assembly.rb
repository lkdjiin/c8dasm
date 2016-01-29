module C8dasm

  class Assembly

    def initialize(opcode)
      @opcode = opcode
      @assembly = build_assembly.to_s || ''
    end

    def to_s
      @assembly
    end

    private

    def build_assembly
      klass = Kernel.const_get('C8dasm::Asm' + @opcode[0])
      klass.new(@opcode)
    end

  end
end
