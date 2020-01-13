require 'game'

describe Game do
  let(:player1) { double :player1, :name => "Player_1_test", :weapon => "Scissors" }
  let(:player2) { double :player2, :name => "Player_2_test", :weapon => "Paper" }
  let(:game) { Game.new(player1, player2) }

  describe "gives list of names" do
    it "returns Player 1's name" do
      expect(game.player1.name).to eq("Player_1_test")
    end

    it "returns Player 2's name" do
      expect(game.player2.name).to eq("Player_2_test")
    end
  end

  describe "result" do
    it "will present result of the game" do
      expect(game.result).to eq("Player 1 wins")
    end

    it "will return 'You win!'" do
      second_test = Game.new(player2, player1)
      expect(second_test.result).to eq("Player 2 wins")
    end

    it "will return 'it's a draw!'" do
      third_test = Game.new(player1, player1)
      expect(third_test.result).to eq("Players have drawn")
    end
  end
end
