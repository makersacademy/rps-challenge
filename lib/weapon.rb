class Weapon

  WEAPONS = ["rock", "paper", "scissor"]

  attr_reader :type

  def initialize(type, weapons = WEAPONS)
    @type = type
    @weapons = weapons
  end


end
