require 'game'

describe Game do
  subject(:game) { described_class.new("Narayan") }

  describe '#player_name' do
    it "tells us the player's name" do
      expect(game.player_name).to eql "Narayan"
    end
  end

  describe '#computer_weapon' do
    it "tells us the computer's weapon" do
      expect(["Rock","Paper","Scissors"]).to include game.computer_weapon
      # alternatively, expect(Game::WEAPONS)...
    end
  end

  describe '#battle' do
    it "tells you if you drew, won, or lost" do
      expect(game.battle("Paper","Scissors")).to eq "lost"
      expect(game.battle("Scissors","Paper")).to eq "won"
      expect(game.battle("Rock","Rock")).to eq "drew"
    end
  end

end
