require 'spec_helper'

include C8dasm

describe Opcode do

  describe 'b123' do
    before { @opcode = Opcode.new('b123') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq 'b123'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'JP V0, 123'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Jump to location 123 + V0.'
    end
  end

end

