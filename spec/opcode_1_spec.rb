require 'spec_helper'

include C8dasm

describe Opcode do

  describe '1200' do
    before { @opcode = Opcode.new('1200') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq '1200'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'JP 200'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Jump to location 200.'
    end
  end

end
