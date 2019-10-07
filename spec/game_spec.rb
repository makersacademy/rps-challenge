require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player, name: "Nabille" }
  let(:computer) { double :player, name: "Computer" }

  describe '#who_won' do
    it 'should return player as the winner' do
      expect(game.who_won(:paper, :rock)).to eq "Nabille"
    end
  end

  describe '#who_won' do
    it 'should return computer as the winner' do
      expect(game.who_won(:scissors, :rock)).to eq "Computer"
    end
  end

  describe '#who_won' do
    it 'should return a draw' do
      expect(game.who_won(:rock, :rock)).to eq :draw
    end
  end

end
