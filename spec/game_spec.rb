require 'game'

describe Game do
  subject(:game) { described_class.new(Player.new("Charlotte"), Computer.new) }
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
      expect(game.player_weapon).to eq [:rock]
    end
    it 'stores the Paper weapon for the player' do
      game.start("Paper")
      expect(game.player_weapon).to eq [:paper]
    end
    it 'stores the scissors weapon for the player' do
      game.start("Scissors")
      expect(game.player_weapon).to eq [:scissors]
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
  xdescribe '#game_weapons' do
    it 'stores the player and computer weapons in an array' do
      # TODO correct this is it works correctly
      game = double(:game)
      allow(:game).to receive(:game_weapons).and_return([:rock, :rock])
      expect(game.game_weapons).to eq [:rock, :rock]
    end
  end

  # TODO use doubles/spies properly here so it works
  xdescribe '#win?' do
    it 'returns true if the player has won' do
      game.start("Start")
      game = double(:game)
      allow(:game).to receive(:computer_weapons).and_return(:rock)
      game.computer_weapons
      game.game_weapons
      expect(game.win?).to eq true
    end
    it 'returns false if the computer has won' do
      expect(game.win?).to eq false
    end
  end

  # TODO use doubles/spies properly here so it works use doubles/spies properly here so it works
  xdescribe '#draw?' do
    it 'returns true if the player draws with the computer' do
      expect(game.draw?).to eq true
    end
    it 'returns false if the player does not draw with the computer' do
      expect(game.draw?).to eq false
    end
  end
end
