# require 'singleton'

class Player
  # include Singleton
  attr_reader :name, :move

  def initialize(name)
    @name = name  
  end

  def assign_move(move)
    @move = move
  end

  def reset_moves
    @move = nil
  end

end
