require 'game'

describe Game do
  let(:game) {Game.new("player", "computer")}

  describe "#player" do
    it "responds to #player" do
      expect(game).to respond_to :player
    end

    it "gives the player name" do
      expect(game.player).to eq "player"
    end
  end 

  describe "#computer" do
    it "responds to #computer " do
      expect(game).to respond_to :computer
    end

    it "gives the computer name" do
      expect(game.computer).to eq "computer"
    end
  end
end
