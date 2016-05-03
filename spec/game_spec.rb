require './lib/game'

describe Game do

  let(:player1) {double :player1, player1: "Bob"}
  let(:player2) {double :player2, player2: "Ross"}
  let(:computer) {double :player2, computer: "computer"}


  subject(:game) { Game.new player1, player2 }


  describe "#initialize" do

    it "Initializes with a player1 name"do
      expect(game.player1).to be player1
    end

    it "Initializes with a player2 name"do
      expect(game.player2).to be player2
    end

  end

  describe "#result" do

  end

  describe "#choices" do

    it "returns an array of two player_choices" do
      result = ["a", "b"]
      expect(game.choices("a", "b")).to eq result
    end

  end

end
