require 'game'

describe Game do
  let!(:player1) { double("player", name: "Wednesday") }
  let!(:player2) { double("player", name: "Thing") }
  let!(:game) { Game.new(player1, player2) }

  context "needs two players to play" do
    it "has a player1" do
      expect(game.player1).to eq player1
    end

    it "has a player2" do
      expect(game.player2).to eq player2
    end
  end

  context "options for the player" do
    it "can choose rock" do
      move = "ROCK"
      game.choose_move(move)
      expect(game.choosen_move).to eq move
    end

    it "can choose paper" do
      move = "PAPER"
      game.choose_move(move)
      expect(game.choosen_move).to eq move
    end

    it "can choose scissors" do
      move = "SCISSORS"
      game.choose_move(move)
      expect(game.choosen_move).to eq move
    end
  end

  context "options for the computer" do
    it "can return rock" do
      moves = ["ROCK", "PAPER", "SCISSORS"]
      expect(moves).to receive(:sample).and_return("ROCK")
      expect(game.pick_random(moves)).to eq moves[0]
    end

    it "can return paper" do
      moves = ["ROCK", "PAPER", "SCISSORS"]
      expect(moves).to receive(:sample).and_return("PAPER")
      expect(game.pick_random(moves)).to eq moves[1]
    end

    it "can return scissors" do
      moves = ["ROCK", "PAPER", "SCISSORS"]
      expect(moves).to receive(:sample).and_return("SCISSORS")
      expect(game.pick_random(moves)).to eq moves[2]
    end
  end
end
