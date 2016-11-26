require 'weapons'

class Player

  attr_reader :name, :weapon

  def initialize(name)
    raise "Player name must be a string" if is_not_a_string?(name)
    @name = name
  end

  def choose_weapon(weapon)
    raise "Sorry, that weapon isn't available" if weapon_isnot_available?(weapon)
    @weapon = weapon
  end

  private

    def is_not_a_string?(name)
      name.class != String
    end

    def weapon_isnot_available?(weapon)
      !Weapons::LIST.include?(weapon)
    end

end
