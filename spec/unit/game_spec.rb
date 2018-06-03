require 'game'
require 'pry'

describe Game do

  describe '#determine_auto_move' do
    subject(:game) { described_class.new("paper") }
    it 'randomly chooses a move' do
      expect(["rock","paper","scissors"]).to include(game.determine_computer_move)
    end
  end

  describe '#determine_outcome' do
    subject(:game) { described_class.new("scissors") }

    it 'confirms a win' do
      game.set_computer_move("paper")
      expect(game.result).to eq "You win!"
    end

    it 'confirms a loss' do
      game.set_computer_move("rock")
      expect(game.result).to eq "You lose!"
    end

    it 'confirms a draw' do
      game.set_computer_move("scissors")
      expect(game.result).to eq "It's a draw!"
    end
  end
end
