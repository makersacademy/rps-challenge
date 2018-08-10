class Player

  CHOICES = ["rock", "paper", "scissors", "spock", "lizard"]

  def initialize(name)
    @name = name
    @choice = nil
  end

  def make_choice(choice)
    @choice = choice
  end

  def make_random_choice
    @choice = CHOICES[Kernel.rand(0..4)]
  end

  attr_reader :name, :choice

end
