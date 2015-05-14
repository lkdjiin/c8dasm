require 'spec_helper'

include C8dasm

describe Opcode do

  describe 'd014' do
    before { @opcode = Opcode.new('d014') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq 'd014'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'DRW V0, V1, 4'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Draws 4-byte sprite from I at (V0, V1)'
    end
  end

end
