require './lib/game'

describe Game do

  let (:player1) { double "first game player" }
  let (:player2) { double "second game player" }
  subject(:game) { described_class.new("Player 1", "Player 2") }

  it "should be able to store a game" do
    expect(Game.new_game(player1, player2)).to be_an_instance_of(Game)
  end

  it "should be able to access the current game" do
    game = Game.new_game(player1, player2)
    expect(Game.current_game).to eq game
  end

  context "player 1 chooses rock" do

    it "should declare a draw when computer chooses rock" do
      allow(player1).to receive(:move).and_return(:rock)
      allow(player2).to receive(:move).and_return(:rock)
      game = Game.new_game(player1, player2)
      game.who_wins
      expect(game.winner).to eq "It's a draw"
    end

    it "should say player 2 wins when computer chooses paper" do
      allow(player1).to receive(:move).and_return(:rock)
      allow(player2).to receive(:move).and_return(:paper)
      game = Game.new_game(player1, player2)
      game.who_wins
      expect(game.winner).to eq "Player 2 wins"
    end

    it "should say player 1 wins when computer chooses scissors" do
      allow(player1).to receive(:move).and_return(:rock)
      allow(player2).to receive(:move).and_return(:scissors)
      game = Game.new_game(player1, player2)
      game.who_wins
      expect(game.winner).to eq "Player 1 wins"
    end

  end

  context "player 1 chooses paper" do

    it "should declare a draw when computer chooses paper" do
      allow(player1).to receive(:move).and_return(:paper)
      allow(player2).to receive(:move).and_return(:paper)
      game = Game.new_game(player1, player2)
      game.who_wins
      expect(game.winner).to eq "It's a draw"
    end

    it "should say player 2 wins when computer chooses scissors" do
      allow(player1).to receive(:move).and_return(:paper)
      allow(player2).to receive(:move).and_return(:scissors)
      game = Game.new_game(player1, player2)
      game.who_wins
      expect(game.winner).to eq "Player 2 wins"
    end

    it "should say player 1 wins when computer chooses rock" do
      allow(player1).to receive(:move).and_return(:paper)
      allow(player2).to receive(:move).and_return(:rock)
      game = Game.new_game(player1, player2)
      game.who_wins
      expect(game.winner).to eq "Player 1 wins"
    end

  end

  context "player 1 chooses scissors" do

    it "should declare a draw when computer chooses scissors" do
      allow(player1).to receive(:move).and_return(:scissors)
      allow(player2).to receive(:move).and_return(:scissors)
      game = Game.new_game(player1, player2)
      game.who_wins
      expect(game.winner).to eq "It's a draw"
    end

    it "should say player 2 wins when computer chooses rock" do
      allow(player1).to receive(:move).and_return(:scissors)
      allow(player2).to receive(:move).and_return(:rock)
      game = Game.new_game(player1, player2)
      game.who_wins
      expect(game.winner).to eq "Player 2 wins"
    end

    it "should say player 1 wins when computer chooses paper" do
      allow(player1).to receive(:move).and_return(:scissors)
      allow(player2).to receive(:move).and_return(:paper)
      game = Game.new_game(player1, player2)
      game.who_wins
      expect(game.winner).to eq "Player 1 wins"
    end

  end

end
