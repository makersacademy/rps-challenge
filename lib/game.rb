class Game
  attr_reader :weapon

  WEAPONS = ["rock", "paper", "scissors"]
  INVALID_WEAPON_ERROR = "Error - invalid weapon"

  def initialize(weapon=nil)
    raise INVALID_WEAPON_ERROR unless WEAPONS.include?(weapon)
    @weapon = weapon
  end

  def self.create(weapon)
    @game = Game.new(weapon)
  end

  def self.instance
    @game
  end

end
