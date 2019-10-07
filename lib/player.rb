class Player
  attr_reader :name, :weapon

  def initialize(name)
    @name = name
    @weapon = nil
  end

  def choose_weapon(weapon)
    @weapon = weapon.downcase.to_sym
  end
end
