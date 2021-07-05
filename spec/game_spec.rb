require "game"

describe Game do

  game = Game.new('Spidey')

  it 'allows the player to choose scissors' do
    game.play('Scissors')
  end

  it 'allows the player to choose paper' do
    game.play('Paper')
  end

  it 'allows the player to choose rock' do
    game.play('Rock')
  end
end
