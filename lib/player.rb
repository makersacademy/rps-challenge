class Player
  attr_reader :choice, :name

  def initialize(name)
    @name = name
  end

  def choose_weapon(weapon)
    @choice = weapon.to_sym
  end

end
