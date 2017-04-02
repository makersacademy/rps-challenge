# Creates the player and stores choice.

class Player

  DEFAULT_CHOICE = "No choice made."
  DEFAULT_NAME = "Player"

  attr_reader :name, :choice
  attr_writer :name, :choice

  def initialize(name = DEFAULT_NAME, choice = DEFAULT_CHOICE)
    @name = name
    @choice = choice
  end

  def choose_rock
    @choice = "rock"
  end

  def choose_paper
    @choice = "paper"
  end

  def choose_scissors
    @choice = "scissors"
  end

end
