require_relative 'game'

class Player
  DEFAULT_POINTS = 10
  attr_reader :name, :points, :choice
  def initialize(name, points = DEFAULT_POINTS)
    @name = name
    @points = points
    @choice = ""
  end

  def choose(choice)
    @choice << choice
  end

  def reduce_point
    @points -= 1
  end

  def draw
    @points = points
    puts "Its a draw"
  end

  def clear_choice
    @choice = ""
  end
end
