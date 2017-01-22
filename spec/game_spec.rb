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
    expect(game.userchoice).to eq :rock
    expect(game.computerchoice).to eq :paper
  end

  it "Returns the to_win of the game" do
    expect(game.to_win).to eq :scissors
    expect(game2.to_win).to eq :rock
    expect(game3.to_win).to eq :paper
    expect(game4.to_win).to eq :rock
    expect(game5.to_win).to eq :paper
    expect(game6.to_win).to eq :scissors
    expect(game7.to_win).to eq :paper
    expect(game8.to_win).to eq :scissors
    expect(game9.to_win).to eq :rock
  end

end
