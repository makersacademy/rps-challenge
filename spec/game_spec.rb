require 'game'

describe Game do
  let(:game1) {Game.new("rock", "paper")}

  describe "#player" do
    it "responds to #player" do
      expect(game1).to respond_to :player
    end

    it "gives the player name" do
      expect(game1.player).to eq "rock"
    end
  end

  describe "#computer" do
    it "responds to #computer " do
      expect(game1).to respond_to :computer
    end

    it "gives the computer name" do
      expect(game1.computer).to eq "paper"
    end
  end

  describe "#decide winner" do
    it "responds to #decide_winner" do
      expect(game1).to respond_to :decide_winner
    end

    it "when player = rock and computer = paper, computer wins" do
      expect(game1.decide_winner).to eq "computer wins"
    end


  end
end
