require 'rps'

describe Rps do
  let(:choice1) { double :choice1 }
  let(:choice2) { double :choice2 }
  describe '#player1' do
    it 'Should return player 1 choice' do
      rps = Rps.new(choice1, choice2)
      expect(rps.choice1).to eq(choice1)
    end
  end

  describe '#player2' do
    it 'Should return player 2 choice' do
      rps = Rps.new(choice1, choice2)
      expect(rps.choice2).to eq(choice2)
    end
  end
end
