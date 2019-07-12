class Game

  attr_reader :chosen_weapon

  def initialize
    @chosen_weapon = "rock"
  end

  def select_weapon(weapon)
    @chosen_weapon = weapon
  end
end
