require 'spec_helper'

include C8dasm

describe Chip8Reader do

  before do
    reader = Chip8Reader.new('./spec/MAZE')
    @opcodes = reader.opcodes
  end

  it 'returns the right amount of opcodes' do
    expect(@opcodes.size).to eq 17
  end

  specify 'an opcode is a string' do
    expect(@opcodes.first).to be_a String
  end

  describe "MAZE's opcodes" do
    specify { expect(@opcodes[0]).to eq 'a21e' }
    specify { expect(@opcodes[2]).to eq '3201' }
    specify { expect(@opcodes[8]).to eq '6000' }
    specify { expect(@opcodes[16]).to eq '8010' }
  end

end
