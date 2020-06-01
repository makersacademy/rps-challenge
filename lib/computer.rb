require_relative 'game'

class Computer
  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def pick_move
    @move = Game::MOVES.sample
  end
end
