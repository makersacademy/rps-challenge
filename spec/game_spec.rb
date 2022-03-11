require 'game'

describe Game do
  game = Game.new("Tinda", "Bhatinda")
  describe ".player_1" do
    it "return the name of player_1" do
      expect(game.player1).to eq "Tinda"
    end

  end

  describe ".player_2" do
    it "return the name of player_1" do
      expect(game.player2).to eq "Bhatinda"
    end

  end

  describe ".p1_pick" do
    it "returns a 'Rock' for Player1" do
      allow(game).to receive(:random).and_return 1
      expect(game.p1_pick).to eq "Rock"
    end

  end

  describe ".p2_pick" do
    it "returns a 'Paper' for Player2" do
      allow(game).to receive(:random).and_return 2
      expect(game.p2_pick).to eq "Paper"
    end

  end




end