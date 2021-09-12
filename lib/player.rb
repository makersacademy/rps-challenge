class Player
  attr_reader :name, :weapon_choice

  def initialize(name)
    @name = name
  end

  def select(weapon_choice)
    @weapon_choice = weapon_choice
  end
end