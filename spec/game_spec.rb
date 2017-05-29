require 'Game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player}

  it 'should start with at lease one player' do
    expect(game.player).to eq player
  end
end
