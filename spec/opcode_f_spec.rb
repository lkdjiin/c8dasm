require 'spec_helper'

include C8dasm

describe Opcode do

  describe 'f607' do
    before { @opcode = Opcode.new('f607') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq 'f607'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'LD V6, DT'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Set V6 = delay timer value.'
    end
  end

  describe 'f00a' do
    before { @opcode = Opcode.new('f00a') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq 'f00a'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'LD V0, KEY'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Wait key press, store its value in V0.'
    end
  end

  describe 'f515' do
    before { @opcode = Opcode.new('f515') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq 'f515'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'LD DT, V5'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Set delay timer = V5.'
    end
  end

  describe 'fd18' do
    before { @opcode = Opcode.new('fd18') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq 'fd18'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'LD ST, Vd'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Set sound timer = Vd.'
    end
  end

  describe 'f61e' do
    before { @opcode = Opcode.new('f61e') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq 'f61e'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'ADD I, V6'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Set I = I + V6.'
    end
  end

  describe 'f029' do
    before { @opcode = Opcode.new('f029') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq 'f029'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'LD F, V0'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Set I = location of sprite for digit V0.'
    end
  end

  describe 'f733' do
    before { @opcode = Opcode.new('f733') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq 'f733'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'LD B, V7'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Store BCD of V7 at I, I+1, and I+2.'
    end
  end

  describe 'f265' do
    before { @opcode = Opcode.new('f265') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq 'f265'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'LD V2, [I]'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Load registers V0..V2 starting from I.'
    end
  end

  describe 'f055' do
    before { @opcode = Opcode.new('f055') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq 'f055'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'LD [I], V0'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Store registers V0..V0 starting at I.'
    end
  end

end
