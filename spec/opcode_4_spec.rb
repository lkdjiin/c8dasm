require 'spec_helper'

include C8dasm

describe Opcode do

  describe '4800' do
    before { @opcode = Opcode.new('4800') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq '4800'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'SNE V8, 00'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Skip next instruction if V8 != 00.'
    end
  end

end
