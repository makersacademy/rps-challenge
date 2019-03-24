require 'game'

describe Game do
  subject(:game) { described_class.new(player)}

  let(:player) { double(:player) }

  it 'returns the player object' do
    expect(game.player).to eq player
  end
end
