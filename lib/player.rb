class Player

  attr_accessor :name, :weapon_choice

  def initialize(name = nil)
    @name = name
    @item = nil
  end

  def chose_weapon(weapon_choice = ["rock", "paper", "scissors"].sample)
    @weapon = weapon_choice
  end
end
