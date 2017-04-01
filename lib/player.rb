# Creates the player and stores choice.

class Player

  DEFAULT_CHOICE = "No choice made."

attr_reader :choice, :name
attr_writer :name

  def initialize(name)
    @name = name
    @choice = DEFAULT_CHOICE
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
