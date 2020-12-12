require 'game'

describe Game do

  subject { described_class.new("paper") }

  describe '#computer_shape' do
    it 'selects a random shape for the computer' do
      srand(4)
      expect(subject.computer_shape).to eq "scissors"
    end
  end

  describe 'winner_calculator' do
    it 'calculates the correct winner: player' do
      srand(4)
      game = Game.new("rock")
      expect{ game.winner_calculator }.to change{ game.player_wins }.to true
    end
  end

  describe 'winner_calculator' do
    it 'calculates the correct winner: computer' do
      srand(4)
      game = Game.new("paper")
      subject.winner_calculator
      expect(subject.player_wins).to eq false
    end
  end

end