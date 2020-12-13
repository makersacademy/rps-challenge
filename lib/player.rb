class Player
  
  attr_accessor :weapon, :name

  def initialize(name)
    @name = name
    @weapon = nil
  end

  def chosen_weapon(weapon)
    fail 'not a possible weapon' unless RPS::WEAPONS.include? weapon

    @weapon = weapon
  end

end
