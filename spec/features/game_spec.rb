require 'game'

describe Game do
  # let(:game) {double :Game, :computer_guess => "scissors", :choice => "rock"}

  describe '#winner' do
    it 'checks for the right winner' do
      game = Game.new("rock")
      srand 563678
      expect(game.winner_is).to eq "player"
    end
  end

  describe '#computer_guess' do
    it 'checks that a computer can guess' do
      game = Game.new("rock")
      srand 563678
      expect(game.computer_guess).to eq "scissors"
    end
  end


end
