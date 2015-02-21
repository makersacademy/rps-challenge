class Computer

  attr_reader :weapon, :name

  def initialize(name = 'computer')
    @weapon = {}
    @name = name
  end

  def random_weapon(game_weapons)
    @weapon = game_weapons.random_weapon
  end

end