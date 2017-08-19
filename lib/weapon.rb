class Weapon

  VALID_WEAPONS = ['rock', 'paper', 'scissors']

  attr_reader :type

  def initialize(type = randomise)
    check_weapon(type)
  end

  def check_weapon(weapon)
    if VALID_WEAPONS.include? weapon
      @type = weapon
    else
      raise 'invalid weapon'
    end
  end

  def randomise
    @type = VALID_WEAPONS.sample
  end

end
