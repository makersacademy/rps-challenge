require './lib/player'

class Computer < Player
  def next_move
    @move = rand(1..Game.current_game.weapons)
  end
end
