require_relative "player"

class PlayerBot < Player

  WEAPONS = ["rock", "paper", "scissors"]

  def random_choice
    WEAPONS.sample
  end

  def make_choice
    @choice = random_choice
  end

end
