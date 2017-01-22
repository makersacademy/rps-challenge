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
  it "Returns the result of the game" do
    expect(game.result).to eq :lose
    expect(game2.result).to eq :lose
    expect(game3.result).to eq :lose
    expect(game4.result).to eq :win
    expect(game5.result).to eq :win
    expect(game6.result).to eq :win
    expect(game7.result).to eq :draw
    expect(game8.result).to eq :draw
    expect(game9.result).to eq :draw
  end
end
