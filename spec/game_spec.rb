require "game"

describe Game do
  describe "#determine_result" do
    # let(:game) { described_class.new(mock_choice)}
    # let(:mock_player) { double :players_choice, players_choice "Rock"}
    # let(:mock_computer) { double :computers_choice, computers_choice "Rock"}

  it "returns it's a draw" do
    # srand(0) seeds the random method that will used next time random is called
    # srand(0) always returns "Rock" - 1st element of array ["Rock", "Paper", "Scissors"]
    srand(0)
    game = Game.new("Rock")
    expect(game.determine_result).to eq("It's a draw")
  end

    it "returns Computer wins" do
      # srand(1) always returns "Paper" - 2nd element of array ["Rock", "Paper", "Scissors"]
      srand(1)
      game = Game.new("Rock")
      expect(game.determine_result).to eq("Computer wins")
    end

    it "returns Man wins" do
      # srand(3) always returns "Scissors" - 2nd element of array ["Rock", "Paper", "Scissors"]
      srand(3)
      game = Game.new("Rock")
      expect(game.determine_result).to eq("Man wins")
    end

  end

end
