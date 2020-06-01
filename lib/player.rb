require_relative 'game'

class Player
  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def move=(move)
    fail "Invalid move assignment in Player class" unless Game::MOVES.include?(move)

    @move = move
  end
end
