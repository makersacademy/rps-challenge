require 'interpreter'

describe Interpreter do

  subject(:interpreter){ described_class.new }

  context '#print' do
    it 'returns the correct string when the player wins' do
      expect(interpreter.print(:player)).to eq 'Huge congratulations. You WIN.'
    end
    it 'returns the correct string when the machine wins' do
      expect(interpreter.print(:machine)).to eq 'Commiserations. You LOSE'
    end
    it 'returns the correct string when it\'s a draw' do
      expect(interpreter.print(:draw)).to eq "Dull but fair. It's a draw."
    end
  end

end