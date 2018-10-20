require 'game'

describe Game do

  it 'initializes with a player' do
    game = Game.new('Steve')
    expect(game.player).to eq 'Steve'
  end

  it 'plays a game of RPS with the computor' do
    game = Game.new('Steve')
    expect(game.move('paper', 'rock')).to eq 'player 1 wins!'
  end

  it 'ends in a tie' do
    game = Game.new('Steve')
    expect(game.move('scissors', 'scissors')).to eq 'draw'
  end
end
