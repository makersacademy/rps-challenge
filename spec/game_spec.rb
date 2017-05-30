require './lib/game'
require './lib/player'
require './lib/computer'

describe Game do
  let(:player) {double(:player)}
  describe "#rules" do
  it "returns a player has won, lost or drawn" do
    # player = Player.new("Spencer").rock
    expect(player).not_to eq("nil")

  end
end
end
