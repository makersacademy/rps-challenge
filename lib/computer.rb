class Computer
  attr_reader :name, :points, :choice

  STARTING_POINTS = 0
  HAND = [:rock, :paper, :scissors]

  def initialize
    @name = "Computer"
    @points = STARTING_POINTS
  end


  def random_choice
    @choice = HAND.sample
  end

  def give_point
    @points += 1
  end
end