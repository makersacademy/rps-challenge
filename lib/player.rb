class Player
  WEAPONS = [:rock, :paper, :scissors]

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def pick(weapon)
    fail "Please choose rock, paper or scissors." unless WEAPONS.include? weapon
    @weapon = weapon
  end
end
