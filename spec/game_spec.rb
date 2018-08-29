require 'game'

describe Game do

  subject(:game) { described_class.new("karho", Computer.new) }

  it "returns the result" do
    allow(game).to receive(:result) { "karho wins!" }
    expect(game.result("rock", "scissors")).to include("karho wins!")
  end

end
