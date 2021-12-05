require 'game'

describe Game do
  let!(:player1) { double("player", name: "Wednesday", victories: 0, p_move: "ROCK") }
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

  context "options for the computer" do
    it "can return rock" do
      moves = ["ROCK", "PAPER", "SCISSORS"]
      expect(moves).to receive(:sample).and_return("ROCK")
      expect(game.pick_random(moves)).to eq "ROCK"
    end

    it "can return paper" do
      moves = ["ROCK", "PAPER", "SCISSORS"]
      expect(moves).to receive(:sample).and_return("PAPER")
      expect(game.pick_random(moves)).to eq "PAPER"
    end

    it "can return scissors" do
      moves = ["ROCK", "PAPER", "SCISSORS"]
      expect(moves).to receive(:sample).and_return("SCISSORS")
      expect(game.pick_random(moves)).to eq "SCISSORS"
    end
  end

  describe "Fight outcomes" do
    context "both players pick the same move" do
      let(:player1) { double("player", name: "Wednesday", victories: 0, p_move: "ROCK") }
      let(:player2) { double("player", name: "Thing", victories: 0, p_move: "ROCK" ) }
      let!(:game) { Game.new(player1, player2) }

      it "recognises when it's a tie" do
        allow(player1).to receive :victory
        allow(player2).to receive :victory
        expect(game.fight_outcome).to eq ("ROCK = ROCK")
      end
    end

    context "player1 picks ROCK" do
      it "know when player1 wins" do
        player1 = double("player", name: "Wednesday", victories: 0, p_move: "ROCK" )
        player2 = double("player", name: "Thing", victories: 0, p_move: "SCISSORS" )
        game = Game.new(player1, player2)

        allow(player1).to receive :victory
        allow(player2).to receive :victory

        expect(game.fight_outcome).to eq "player wins ROCK beats SCISSORS "
      end

      it "know when player2 wins" do
        player1 = double("player", name: "Wednesday", victories: 0, p_move: "ROCK" )
        player2 = double("player", name: "Thing", victories: 0, p_move: "PAPER" )
        game = Game.new(player1, player2)

        allow(player1).to receive :victory
        allow(player2).to receive :victory

        expect(game.fight_outcome).to eq "computer wins PAPER beats ROCK "
      end
    end
  end
end
