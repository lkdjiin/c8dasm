require 'spec_helper'

include C8dasm

describe Opcode do

  context 'with opcode 1200' do
    before { @opcode = Opcode.new('1200') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq '1200'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'JP 200'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Jump to location 200.'
    end
  end

  context 'with opcode 3201' do
    before { @opcode = Opcode.new('3201') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq '3201'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'SE V2, 01'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Skip next instruction if V2 = 01.'
    end
  end

  context 'with opcode 7004' do
    before { @opcode = Opcode.new('7004') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq '7004'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'ADD V0, 04'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'V0 = V0 + 04.'
    end
  end

  context 'with opcode a21e' do
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

    it 'returns the default address in hexadecimal' do
      expect(@opcode.address).to eq '200'
    end
  end

  context 'with an address' do
    it 'returns the address in hexadecimal' do
      opcode = Opcode.new('a21e', address: 1024)
      expect(opcode.address).to eq '400'
    end
  end

  describe '#line' do
    it 'returns a fully formated line for the desassembly' do
      opcode = Opcode.new('a21e', address: 1024)
      expected = '400:a21e  LD I, 21e  ;Puts 21e into register I.'
      expect(opcode.line).to eq expected
    end
  end

  context 'with opcode c201' do
    before { @opcode = Opcode.new('c201') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq 'c201'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'RND V2, 01'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Puts random byte AND 01 into register V2.'
    end
  end

  context 'with opcode d014' do
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