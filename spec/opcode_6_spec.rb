require 'spec_helper'

include C8dasm

describe Opcode do

  describe '6012' do
    before { @opcode = Opcode.new('6012') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq '6012'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'LD V0, 12'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Puts the value 12 into register V0.'
    end
  end

end
