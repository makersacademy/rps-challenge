class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def pick_specified(choice)
    @choice = choice
  end

  def pick_random
    ["Rock", "Paper", "Scissors"].sample
  end

end
