require 'game'

describe Game do
  let(:game)  { described_class.new("rock", "paper") }
  let(:game2) { described_class.new("paper", "scissors") }
  let(:game3) { described_class.new("scissors", "rock") }
  let(:game4) { described_class.new("rock", "scissors") }
  let(:game5) { described_class.new("paper", "rock") }
  let(:game6) { described_class.new("scissors", "paper") }
  let(:game7) { described_class.new("rock", "rock") }
  let(:game8) { described_class.new("paper", "paper") }
  let(:game9) { described_class.new("scissors", "scissors") }

  it "Initializes a game with userchoice and computer choice" do
    expect(game.userchoice).to eq "rock"
    expect(game.computerchoice).to eq "paper"
  end
  it "Returns the winner of the game" do
    expect(game.winner).to eq "Computer wins!"
    expect(game2.winner).to eq "Computer wins!"
    expect(game3.winner).to eq "Computer wins!"
    expect(game4.winner).to eq "You win!"
    expect(game5.winner).to eq "You win!"
    expect(game6.winner).to eq "You win!"
    expect(game7.winner).to eq "It's a draw!"
    expect(game8.winner).to eq "It's a draw!"
    expect(game9.winner).to eq "It's a draw!"
  end
end
