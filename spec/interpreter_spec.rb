require 'interpreter'

describe Interpreter do

  subject(:interpreter){ described_class.new }
  let(:player){ double(:player, name: "Ollie") }

  context '#print' do
    it 'returns the correct string when a player wins' do
      expect(interpreter.print(player)).to eq 'Huge congratulations to Ollie - the WINNER.'
    end
    it 'returns the correct string when it\'s a draw' do
      expect(interpreter.print(:draw)).to eq "Dull but fair. It's a draw."
    end
  end

end