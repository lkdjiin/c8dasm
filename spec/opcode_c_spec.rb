require 'spec_helper'

include C8dasm

describe Opcode do

  describe 'c201' do
    before { @opcode = Opcode.new('c201') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq 'c201'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'RND V2, 01'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Puts random byte AND 01 into register V2.'
    end
  end

end
