require 'game'

describe Game do
  subject(:game) {described_class.new(player,computer)}
  let(:player) {double :player}
  let(:computer) {double :computer}

  it "should be initialized with a player" do
    expect(game.player).to eq player
  end
end
