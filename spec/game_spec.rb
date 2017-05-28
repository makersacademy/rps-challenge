require 'game'

describe Game do
  subject(:game) { described_class.new(Player.new("Charlotte"), Computer.new) }

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
    it 'stores the Scissor weapon for the player' do
      game.start("Scissor")
      expect(game.player_weapon).to eq [:scissor]
    end
    it "does not store any other string that is not an option" do
      game.start("Cellotape")
      expect(game.player_weapon).to eq []
    end
  end

  describe '#computer_weapons' do
    it 'stores the computer weapons' do
      # TODO improve this double test to be a spy or work at least 
      rock_double = double(:computer)
      allow(rock_double).to receive(:computer_weapons).and_return(:rock)
      expect(rock_double.computer_weapons).to eq :rock
    end
  end
  describe '#game_weapons' do
    it 'stores the player and computer weapons in an array' do
      # TODO must be a spy that works correctly
      game.start("Rock")
      rock_double = double(:computer)
      allow(rock_double).to receive(:computer_weapons).and_return(:rock)
      rock_double.computer_weapons
      expect(game.game_weapons).to eq [:rock, :rock]
    end
  end
end
