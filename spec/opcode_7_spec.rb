require 'spec_helper'

include C8dasm

describe Opcode do

  describe '7004' do
    before { @opcode = Opcode.new('7004') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq '7004'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'ADD V0, 04'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'V0 = V0 + 04.'
    end
  end

end
