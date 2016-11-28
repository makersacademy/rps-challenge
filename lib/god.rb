require_relative 'weapons'

class God

  include Weapons
  def weapon
    WEAPONS.sample
  end
end
