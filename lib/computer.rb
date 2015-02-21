class Computer

  attr_reader :weapon

  def initialize
    @weapon = {}
  end

  def random_weapon(game_weapons)
    @weapon = game_weapons.random_weapon
  end

end