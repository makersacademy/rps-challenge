class Game

  attr_reader :choice

  def initialize(choice)
    @choice = choice
  end

  def random_rps
    ["Rock", "Paper", "Scissors"].sample
  end

end
