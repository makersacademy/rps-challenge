require_relative 'game'

class Player

  attr_reader :name
  attr_accessor :move

  def initialize(name)
    @name = name
    @move = nil
  end

  def random_move
    @move = ["Rock", "Paper", "Scissors"].sample
  end

end
