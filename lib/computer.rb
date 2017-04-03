

class Computer
  attr_reader :choice

  WEAPONS = ["rock", "paper", "scissors"]

  def set_choice(choice = WEAPONS.sample)
    @choice = choice
  end
end
