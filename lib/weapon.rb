class Weapon

  WEAPONS = ["rock", "paper", "scissor"]

  attr_reader :type

  def initialize(type)
    @type = type
    @weapons = WEAPONS
  end


end
