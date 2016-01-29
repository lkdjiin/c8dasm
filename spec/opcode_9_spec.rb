require 'spec_helper'

include C8dasm

describe Opcode do

  describe '9210' do
    before { @opcode = Opcode.new('9210') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq '9210'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'SNE V2, V1'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Skip next instruction if V2 != V1.'
    end
  end

end

