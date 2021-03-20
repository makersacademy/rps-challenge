require './lib/player'

class Computer < Player
  def move
    @move = rand(1..Game.current_game.weapons)
  end
end
