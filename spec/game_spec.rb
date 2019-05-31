require 'game'

describe Game do

  let(:game)          { Game.new('Kelvin', player_class) }
  let(:player_class)  { double(:player_class, new: player) }
  let(:player)        { double(:player, name: 'Kelvin') }

  it 'can store a player and return it' do
    expect(game.player).to eq(player)
  end

end