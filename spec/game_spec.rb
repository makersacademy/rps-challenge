require 'game'

describe Game do

  it 'Will create two players upon creation' do
    game = Game.new Player
    expect(game.player_1).to be_kind_of(Player)
    expect(game.player_2).to be_kind_of(Player)
  end

end