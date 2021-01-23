require 'game'

describe Game do
  subject(:game) { described_class.new(player)}
  let(:player) { double :player, name: "Kelly"}
  it 'instantiates with a player' do
    expect(game.player.name).to eq "Kelly"
  end
end
