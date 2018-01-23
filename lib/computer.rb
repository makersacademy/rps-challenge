require_relative "player"

class Computer < Player

  WEAPONS = ["rock", "paper", "scissors"]

  def initialize(name = "computer", weapons = WEAPONS)
    @name = name
    @weapons = weapons
  end

  def move(*)
    @choice =  @weapons.sample
  end

end
