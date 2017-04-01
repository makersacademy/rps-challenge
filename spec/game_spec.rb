require 'game'

describe Game do
subject(:game) { described_class.new("Connie") }

describe "initialize" do
  it "initialized with player" do
    expect(game.player).to eq "Connie"
    end
  end
end
