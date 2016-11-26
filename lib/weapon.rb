class Weapon

  attr_reader :weapon

  WEAPONS = [:Rock, :Paper, :Scissors]
  
  def initialize(weapon)
    @weapon = weapon.to_sym
  end




end
