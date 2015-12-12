require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player, name: 'Ruby' }

  it 'takes a player as an argument' do
    expect(game.player).to eq player
  end
end
