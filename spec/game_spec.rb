require 'game'

describe Game do
  let(:game) { Game.new("Rock") }

  describe '#random_option' do
    it 'generates a random option to play against the player' do
      allow_any_instance_of(Game).to receive(:random_option) {"Rock"}
      game.play
      expect(game.random).to eq "Rock"
    end
  end

  describe '#winner' do
    it 'calculates the winner of the game' do
      allow_any_instance_of(Game).to receive(:random_option) {"Scissors"}
      game.play
      expect(game.winner).to eq 'You win!'
    end
  end
end
