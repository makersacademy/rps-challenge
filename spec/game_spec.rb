require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player }

  it "should have an empty player choice" do
    expect(game.player_choice).to be nil
  end

  it "should take a player" do
    expect(game.player).to eq player
  end

end
