require './lib/game'

describe Game do

  subject(:game) { described_class.new(choice) }
  let(:choice) { double(:choice) }

  it "assigns user choice on instantiation" do
    expect(game.choice).to eq choice
  end

  it "can generate a random rps choice" do
    expect(game).to respond_to(:random_rps)
  end

  it "generates a random choice of rock, paper or scissors" do
    expect(["Rock", "Paper", "Scissors"]).to include(game.random_rps)
  end







end
