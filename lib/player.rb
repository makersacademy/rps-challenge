class Player
  attr_reader :name
  attr_reader :weapon

  def initialize(name)
    @name = name 
    @weapon = nil   
  end

  def choose_weapon(weapon)
    @weapon = weapon
  end
end
