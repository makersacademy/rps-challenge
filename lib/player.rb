class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
    @choice = nil
  end

  def make_choice(choice)
    @choice = choice
  end

  def make_random_choice
    @choice = ["rock", "paper", "scissors"].sample
  end

end
