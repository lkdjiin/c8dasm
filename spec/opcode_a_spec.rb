require 'spec_helper'

include C8dasm

describe Opcode do

  describe 'a21e' do
    before { @opcode = Opcode.new('a21e') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq 'a21e'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'LD I, 21e'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Puts 21e into register I.'
    end
  end

end
