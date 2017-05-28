
class Player
  attr_reader :name, :weapon_choice

  def initialize(name)
    @name = name
  end

  def choose_weapon(weapon_choice)
    @weapon_choice = weapon_choice
  end

  def wins_round

  end

end