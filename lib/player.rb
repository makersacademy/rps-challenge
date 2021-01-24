class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def pick_specified(choice)
    @choice = choice
  end

  def pick_random
    @choice = random_choice
  end

  private

  def random_choice
    ["Rock", "Paper", "Scissors"].sample
  end
  
end
