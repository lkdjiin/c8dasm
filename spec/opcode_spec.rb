require 'spec_helper'

include C8dasm

describe Opcode do

  context 'with an explicit address' do
    it 'returns the address in hexadecimal' do
      opcode = Opcode.new('a21e', address: 1024)
      expect(opcode.address).to eq '400'
    end
  end

  context 'without an explicit address' do
    it 'returns the default address in hexadecimal' do
      opcode = Opcode.new('a21e')
      expect(opcode.address).to eq '200'
    end
  end

  describe '#line' do
    it 'returns a fully formated line for the desassembly' do
      opcode = Opcode.new('a21e', address: 1024)
      expected = '400:a21e  LD I, 21e     ;Puts 21e into register I.'
      expect(opcode.line).to eq expected
    end
  end

  context 'with opcode 0000' do
    before { @opcode = Opcode.new('0000') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq '0000'
    end

    it 'returns no assembly' do
      expect(@opcode.assembly).to eq ''
    end

    it 'returns special comment' do
      expect(@opcode.comment).to eq 'WARNING: Unknown instruction!'
    end
  end

end
