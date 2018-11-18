class Player

  CHOICES = ["rock", "paper", "scissors", "lizard", "spock"]

  attr_reader :choice, :name

  def initialize(name = "Computer", choice = CHOICES.sample)
    @name = name
    @choice = choice
  end

end
