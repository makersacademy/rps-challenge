require './lib/game'
class Computer
attr_accessor :weapon

  def weapon_select
    @weapon = Game::WEAPONS.sample
  end

  def rpsls_weapon
    @weapon = Game::RPSLS_WEAPONS.sample
  end

  def name
    "Computer"
  end

end
