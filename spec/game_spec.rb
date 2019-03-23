require 'game'

describe Game do
  subject(:game) { described_class.new("China") }

  it "can return player 1's name" do
    expect(game.player1).to eq "China"
  end
end
