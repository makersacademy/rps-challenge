require 'game'

describe Game do
  let(:taran) { Player.new("Taran") }
  let(:game) { Game.new(taran) }
  it 'stores a player instance' do
    expect(game.player).to be_kind_of(Player)
  end
end