require 'spec_helper'

include C8dasm

describe Opcode do

  describe '8d52' do
    before { @opcode = Opcode.new('8d52') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq '8d52'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'AND Vd, V5'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Set Vd = Vd AND V5.'
    end
  end

  describe '8bd4' do
    before { @opcode = Opcode.new('8bd4') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq '8bd4'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'ADD Vb, Vd'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Set Vb = Vb + Vd, set VF = carry.'
    end
  end

end
