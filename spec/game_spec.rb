require 'game'

describe Game do
  let(:player) { double :player }
  subject(:game) { described_class.new(player) }

  it 'returns current player when called' do
    expect(game.current_player).to eq player
  end
end
