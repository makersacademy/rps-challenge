class Player
  attr_reader :name, :weapon

  def initialize(name)
    @name = name 
  end

  def equip(weapon)
    @weapon = weapon
  end  

end 
