class Player
  attr_reader :name, :weapon, :weapon_choices

  def initialize(name)
    @name = name
    @weapon = nil
    @weapon_choices = ["Rock", "Paper", "Scissors"]
  end

  def choose_weapon(weapon)
    @weapon = weapon
  end
end
