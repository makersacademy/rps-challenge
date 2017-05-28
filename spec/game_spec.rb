require 'game'

describe Game do
  let(:charlotte) { Player.new("Charlotte")}
  subject(:game) { described_class.new(charlotte, Computer.new) }
  let(:computer) { spy(:computer) }

  describe '#initialize' do
    it 'has a player' do
      expect(game.player.name).to eq "Charlotte"
    end
    it 'has a computer' do
      expect(game.computer.name).to eq "The Evil Computer"
    end
  end

  describe '#start' do
    it 'stores the Rock weapon for the player' do
      game.start("Rock")
      expect(game.player_weapon).to eq :rock
    end
    it 'stores the Paper weapon for the player' do
      game.start("Paper")
      expect(game.player_weapon).to eq :paper
    end
    it 'stores the scissors weapon for the player' do
      game.start("Scissors")
      expect(game.player_weapon).to eq :scissors
    end
  end

  describe '#computer_weapons' do
    it 'stores the computer weapons' do
      # TODO improve this double test to be a spy or work at least
      rock_double = double(:computer)
      allow(rock_double).to receive(:computer_weapon).and_return(:rock)
      expect(rock_double.computer_weapon).to eq :rock
    end
  end
  describe '#game_weapons' do
    it 'stores the player and computer weapons in an array' do
      rock_computer = double(:computer)
      allow(rock_computer).to receive(:weapon_choice).and_return(:rock)
      game = Game.new(charlotte, rock_computer)
      game.start("Paper")
      expect(game.games_weapons).to eq [:paper, :rock]
    end
  end

  # TODO correct this is it works correctly
  describe '#win_game?' do
    it 'returns true if the game has been won' do
      rock_computer = double(:computer)
      allow(rock_computer).to receive(:weapon_choice).and_return(:rock)
      game = Game.new(charlotte, rock_computer)
      game.start("Paper")
      expect(game.win_game?).to eq true
    end
  end
end
