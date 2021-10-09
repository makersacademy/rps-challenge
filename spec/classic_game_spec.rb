require 'classic_game'

describe ClassicGame do
  let(:player_one) { double(:player) }
  let(:game) { described_class.new(player_one) }

  it "has one player" do
    expect(game.player).to eq player_one
  end

end
