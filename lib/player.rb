require_relative 'game'

class Player

  attr_accessor :name
  attr_reader :move

  def initialize name
    @name = name
  end

  def choose(move)
    @move = move.to_sym
  end

end
