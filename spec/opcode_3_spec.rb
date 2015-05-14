require 'spec_helper'

include C8dasm

describe Opcode do

  describe '3201' do
    before { @opcode = Opcode.new('3201') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq '3201'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'SE V2, 01'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Skip next instruction if V2 = 01.'
    end
  end

end
