require 'game'

describe Game do
  let(:player)              { double :player }
  let(:player_class)        { double :player_class, new: player, name: player }

  it 'Should return player name' do
    game = Game.create(player)
    expect(game.player_1.name).to eq player
  end
end
