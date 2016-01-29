require 'spec_helper'

include C8dasm

describe Opcode do

  describe '5210' do
    before { @opcode = Opcode.new('5210') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq '5210'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'SE V2, V1'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Skip next instruction if V2 = V1.'
    end
  end

end


