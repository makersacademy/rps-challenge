class Player
  attr_reader :name
  attr_accessor :score, :weapon

  def initialize
    @score = 0
    @weapon = nil
  end

  def set_name(name)
    @name = name
  end

  def select_weapon(weapon)
    @weapon = weapon
  end

  def random_weapon_selection
    @weapon = WEAPONS.sample
  end

  private

  WEAPONS = ["Rock", "Paper", "Scissors"]

end
