require 'game'

describe Game do
  let(:game) {Game.new("rock", "paper")}

  describe "#player" do
    it "responds to #player" do
      expect(game).to respond_to :player
    end

    it "gives the player name" do
      expect(game.player).to eq "rock"
    end
  end

  describe "#computer" do
    it "responds to #computer " do
      expect(game).to respond_to :computer
    end

    it "gives the computer name" do
      expect(game.computer).to eq "paper"
    end
  end

  describe "#decide winner" do
    it "responds to #decide_winner" do
      expect(game).to respond_to :decide_winner
    end

    
  end
end
