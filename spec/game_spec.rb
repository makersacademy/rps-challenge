require "game"

describe Game do
  it 'allows the player to choose scissors' do
    game = Game.new('Spidey')
    game.play('Scissors')
  end
end
