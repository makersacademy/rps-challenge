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
end
