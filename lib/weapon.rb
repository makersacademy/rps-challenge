class Weapon

  WEAPONS = ["rock", "paper", "scissors"]

  attr_reader :type

  def initialize(type)
    @type = type
    @weapons = WEAPONS
  end


end
