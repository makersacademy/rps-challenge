require 'game'

describe Game do
  let(:player) { double :player, weapon: "rock" }
  let(:computer_player) { double :computer_opponent, weapon: "scissors" }
  describe '#winner' do
    it 'calculates if player won' do
      game = Game.new(player, computer_player)
      expect(game.winner).to eq "You win!"
    end
  end
end
