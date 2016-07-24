class Player
  attr_reader :choice, :name

  def initialize(name)
    @name = name
  end

  def weapon(weapon)
    @choice = weapon.to_sym
  end

end
