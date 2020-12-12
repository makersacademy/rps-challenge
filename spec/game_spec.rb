require './lib/game.rb'

describe Game do
  it "takes a player name on initialization" do
    game = Game.new("Kevin")
    expect(game.player_name).to eq("Kevin")
  end
  it "is created without a player move" do
    game = Game.new("Kevin")
    expect(game.player_move).to eq(nil)
  end
  it "is created without a computer move" do
    game = Game.new("Kevin")
    expect(game.computer_move).to eq(nil)
  end

  describe "#update_player_move" do
    it "updates @player_move " do
      game = Game.new("Kevin")
      game.update_player_move("spock")
      expect(game.player_move).to eq("spock")
    end
  end

  describe "#update_computer_move" do
    it "updates @computer_move " do
      game = Game.new("Kevin")
      allow(game).to receive(:generate_random_move) {"lizard"}
      game.update_computer_move
      expect(game.computer_move).to eq("lizard")
    end
  end

  describe "#generate_random_move" do
    it "returns a valid move" do
      game = Game.new("Kevin")
      move = game.generate_random_move
      expect(Game::VALID_MOVES).to include(move)
    end

    it "has a roughly equal chance of generating each move" do
      no_of_test_runs = 1000
      accuracy_percentage = 10
      frequencies = Hash.new(0)

      # test run the move generator a defined number of times
      no_of_test_runs.times{
        # on each run, record the move by adding 1 to the move's corresponding key in the 'frequencies' hash table
        game = Game.new("Kevin")
        move = game.generate_random_move.to_sym
        frequencies[move] += 1
      }
      # after the defined number of test runs, expect the frequency of each choice to be + or -  accuracy_percentage% of an equal third split
      expect(frequencies[:rock]).to be_within(no_of_test_runs * accuracy_percentage/100).of(no_of_test_runs / Game::VALID_MOVES.length)
      expect(frequencies[:paper]).to be_within(no_of_test_runs * accuracy_percentage/100).of(no_of_test_runs / Game::VALID_MOVES.length)
      expect(frequencies[:scissors]).to be_within(no_of_test_runs * accuracy_percentage/100).of(no_of_test_runs / Game::VALID_MOVES.length)
    end
  end


  describe "#return_winner_name" do
    before(:each) do
      @game = Game.new("Kevin")
      @game.player_move = "rock"
    end
    it "says when the computer wins" do
      @game.computer_move= "paper"
      expect(@game.return_winner_name).to eq("computer")
    end
    it "says when the player wins" do
      @game.computer_move= "scissors"
      expect(@game.return_winner_name).to eq(@game.player_name)
    end
    it "says when it's a draw" do
      @game.computer_move= "rock"
      expect(@game.return_winner_name).to eq("It's a draw! (boring)")
    end
  end

end
