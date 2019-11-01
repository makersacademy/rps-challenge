require 'game'

describe Game do
 it 'can register the name of the player before playing' do
    game = Game.new
    expect(game.player_1).to be_kind_of(String)
 end
end

