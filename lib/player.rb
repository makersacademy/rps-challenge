class Player

attr_reader :name, :weapon_choice

  def initialize(name)
    @name = name
  end

  def make_weapon_choice(weapon_choice)
    @weapon_choice = weapon_choice
  end


end
