require_relative 'game'

class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
    @move = nil
  end

  def player_move(move)
    @move = move
  end

end
