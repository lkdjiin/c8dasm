require 'spec_helper'

include C8dasm

describe Opcode do

  context 'with opcode 00e0' do
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

  context 'with opcode 00ee' do
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

  context 'with opcode 22a2' do
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

  context 'with opcode 4800' do
    before { @opcode = Opcode.new('4800') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq '4800'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'SNE V8, 00'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Skip next instruction if V8 != 00.'
    end
  end

  context 'with opcode 6012' do
    before { @opcode = Opcode.new('6012') }

    it 'returns the opcode' do
      expect(@opcode.opcode).to eq '6012'
    end

    it 'returns the assembly' do
      expect(@opcode.assembly).to eq 'LD V0, 12'
    end

    it 'returns a comment' do
      expect(@opcode.comment).to eq 'Puts the value 12 into register V0.'
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

  context 'with opcode 8d52' do
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

  context 'with opcode 8bd4' do
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
      expected = '400:a21e  LD I, 21e     ;Puts 21e into register I.'
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

  context 'with opcode e29e' do
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

  context 'with opcode eda1' do
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

  context 'with opcode f607' do
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

  context 'with opcode f515' do
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

  context 'with opcode fd18' do
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

  context 'with opcode f61e' do
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

  context 'with opcode f029' do
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

  context 'with opcode f733' do
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

  context 'with opcode f265' do
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
