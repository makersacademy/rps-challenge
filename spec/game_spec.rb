require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player}

  it "returns random weapon" do
    allow(Game::OPTIONS).to receive(:sample) { "ROCK" }
    expect(game.computer_selection).to eq "ROCK"
  end

  it "should declare the winner" do
    expect(game.summary).to eq "DRAW"
  end
end
