require './lib/game'

describe Game do

  subject(:game) { described_class.new("Rock") }
  # let(:choice) { double(:choice) }

  it "assigns user choice on instantiation" do
    expect(game.choice).to eq "Rock"
  end

  it "generates a random choice of rock, paper or scissors" do
    expect(["Rock", "Paper", "Scissors"]).to include(game.random_rps)
  end

  it "returns true when user choice is equal to random rps" do
    allow(game).to receive(:random_rps).and_return "Rock"
    expect(game.compare).to eq true
  end

  it "returns false when user choice is not equal to random rps" do
    allow(game).to receive(:random_rps).and_return "Paper"
    expect(game.compare).to eq false
  end




end
