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

  describe '#result_img_url' do
    it "tells you the image url for the outcome of a battle" do
      expect(game.result_img_url("Scissors","Paper")).to eq "img/s_win.png"
      expect(game.result_img_url("Scissors","Rock")).to eq "img/r_win.png"
      expect(game.result_img_url("Paper","Rock")).to eq "img/p_win.png"
    end
  end

end
