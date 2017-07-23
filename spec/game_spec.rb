require 'game'

describe Game do

  subject(:game) { described_class.new(player) }
  let(:player) { "Junot" }

  it 'has a player' do
    expect(game.player).to eq player
  end

end
