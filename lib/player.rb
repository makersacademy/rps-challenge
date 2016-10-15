class Player

  attr_reader :name, :score, :choice

  POINTS = 1

  def initialize(name)
    @name = name
    @score = 0
  end

  def receive_points
    @score += POINTS
  end

  def set_choice(choice)
    @choice = choice
  end

end
