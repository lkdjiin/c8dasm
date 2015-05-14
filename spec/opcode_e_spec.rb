require 'spec_helper'

include C8dasm

describe Opcode do

  describe 'e29e' do
    before { @opcode = Opcode.new('e29e') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq 'e29e'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'SKP V2'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Skip next inst. if V2 key is pressed.'
    end
  end

  describe 'eda1' do
    before { @opcode = Opcode.new('eda1') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq 'eda1'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'SKNP Vd'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Skip next inst. if Vd key is not pressed.'
    end
  end

end
