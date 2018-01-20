require 'game'

describe Game do
  let(:player_1)            { double :player_1 }
  let(:player_class)        { double :player_class, new: player_1, name: player_1 }
  subject(:game)            { described_class.new(player_1) }

  it 'Should return player name' do

    expect(game.player_1.name).to eq player_1
  end
end
