
class Player

  attr_reader :name, :points

  def initialize(name)
    @name = name
    @points = 50
  end

  def move
     "rock" || "scissors" || "paper"
  end

  def increase_points
    @points += 10
  end

end
