class Player

  attr_reader :name, :weapon, :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def select_attack(weapon)
    fail("Illegal weapon detected!") unless Game::WEAPONS.include? weapon.to_sym
    @weapon = weapon.to_sym
  end

  def add_win
    @score += 1
  end
end
