require 'spec_helper'

include C8dasm

describe Opcode do

  describe '22a2' do
    before { @opcode = Opcode.new('22a2') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq '22a2'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'CALL 2a2'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Call subroutine at 2a2.'
    end
  end

end
