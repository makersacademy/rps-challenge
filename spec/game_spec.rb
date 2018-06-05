require 'game'


describe Game do

  subject(:game) {described_class.new("Rock","Scissors")}

  describe '#result' do
    it 'knows the result of a game' do
      expect(game.result).to eq :Won!
    end
  end

  describe '#tally' do
    it 'keeps a tally' do
      expect(game.tally).to eq "Wins: 1, Losses: 0"
    end
  end
end
