require 'game'

describe Game do
  let(:player)              { double :player }
  let(:player_class)        { double :player_class, new: player, name: player }
  subject(:game)            { described_class.new(player_class) }

  it 'Should return player name' do
    expect(game.player_1.name).to eq player
  end
end
