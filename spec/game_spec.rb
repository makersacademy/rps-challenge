require 'game'

describe Game do

  subject(:game) { described_class.new("karho") }

  it "returns the result" do
    allow(game).to receive(:result) { "karho wins!" }
    expect(game.result("rock", "scissors")).to include("karho wins!")
  end

end
