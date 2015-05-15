require 'game'

describe Game do

  it 'Will create two players upon creation' do
    game = Game.new Player
    expect(game.player_1).to be_kind_of(Player)
    expect(game.player_2).to be_kind_of(Player)
  end

  it 'Will set a default win goal of one' do
    game = Game.new Player
    expect(game.goal).to eq 1
  end

  it 'Will set a specified win goal of five' do
    game = Game.new Player, 5
    expect(game.goal).to eq 5
  end

end