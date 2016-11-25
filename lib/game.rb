class Game

  attr_accessor :choice

  def initialize(choice)
    @choice = choice
  end

  def random_rps
    ["Rock", "Paper", "Scissors"].sample
  end

  def compare
    return true if self.choice == random_rps
    return false
  end

end
