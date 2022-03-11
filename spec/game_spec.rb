require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player }

  it "initializes the player" do
    expect(game.player).to eq player
  end

  it "creates a random output for computer" do
    expect { game.computer }.to_not raise_error
  end

end