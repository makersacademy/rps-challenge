require 'game'

describe Game do

  let(:player) { Player.new('Tim') }
  let(:computer) { Player.new('Computer') }
  subject(:game) { described_class.new(player, computer) }
  let(:weapons) { ["Rock", "Paper", "Scissors"] }

  describe '#player1' do
    it 'returns the player object' do
      expect(game.player1).to eq(player)
    end
  end

  describe '#weapon_selection' do
    it 'returns the choice of weapon' do
      game.player1.choose_weapon("rock")
      expect(game.weapon_selection).to eq "rock"
    end
  end

  describe '#computer_random_weapon' do
    it 'returns a randomly selected weapon for the computer from rock, paper or scissors' do
      game.computer_random_weapon
      expect(weapons).to include(game.computer_weapon)
    end
  end

end
