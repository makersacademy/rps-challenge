class Computer

  attr_reader :weapon, :name

  WEAPONS = [:rock, :paper, :scissors]

  def initialize(weapons = WEAPONS, name = 'computer')
    @weapon = weapons.sample
    @name = name
  end
  
end
