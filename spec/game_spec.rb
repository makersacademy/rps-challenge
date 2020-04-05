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

    let(:game2) { Game.new("rock", "rock") }
    let(:game3) { Game.new("scissors, paper") }
    it "responds to #decide_winner" do
      expect(game).to respond_to :decide_winner
    end

    it "when player = rock and computer = paper, computer wins" do
      expect(game.decide_winner).to eq "computer wins"
    end

    it "when player = rock & computer = rock, it's a draw" do
      expect(game2.decide_winner).to eq "It's a draw"
    end
    #remember that I am using scissor with an s
    it "when player = scissors & computer = paper, player wins" do
      expect(game3.decide_winner).to eq "player wins"
    end
  end
end
