class Player
  attr_accessor :name
  attr_reader :weapon

  def initialize(name)
    @name = name
  end
  
  def choose(weapon)
    @weapon = weapon.to_sym
  end

end
