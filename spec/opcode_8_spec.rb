require 'spec_helper'

include C8dasm

describe Opcode do

  describe '8a10' do
    before { @opcode = Opcode.new('8a10') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq '8a10'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'LD Va, V1'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Set Va = V1.'
    end
  end

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

  describe '8903' do
    before { @opcode = Opcode.new('8903') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq '8903'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'XOR V9, V0'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Set V9 = V9 XOR V0.'
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

  describe '8b25' do
    before { @opcode = Opcode.new('8b25') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq '8b25'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'SUB Vb, V2'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Set Vb = Vb - V2, set VF = NOT borrow.'
    end
  end

end
