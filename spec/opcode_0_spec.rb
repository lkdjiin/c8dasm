require 'spec_helper'

include C8dasm

describe Opcode do

  describe '00e0' do
    before { @opcode = Opcode.new('00e0') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq '00e0'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'CLS'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Clear the display.'
    end
  end

  describe '00ee' do
    before { @opcode = Opcode.new('00ee') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq '00ee'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'RET'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Returns from this subroutine.'
    end
  end

end
