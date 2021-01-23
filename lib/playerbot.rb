require_relative "player"

class PlayerBot < Player

  def random_choice
    ["rock", "paper", "scissors"].sample
  end

  def make_choice
    @choice = random_choice
  end

end
