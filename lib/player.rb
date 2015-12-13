class Player
  attr_reader :name, :weapon, :weapons

  def initialize(name)
    @name = name
    @weapon = nil
    @weapons = ['rock','paper','scissors']
  end

  def select_weapon(weapon)
    @weapon = weapon
  end

end
