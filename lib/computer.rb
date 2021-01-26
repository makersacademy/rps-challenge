class Computer 

  attr_reader :move
  
  WEAPONS = [:rock, :paper, :scissors]
  
  def initialize
    @move = WEAPONS.sample
  end
  
end