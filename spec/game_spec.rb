require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player, name: 'Frank' }

  it 'registers a player in the game' do
    expect(game.player).to eq player
  end
end
