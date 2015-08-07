class Player

  attr_accessor :name
  
  def initialize
  @name
  end 

  def throw weapon
    weapon
  end

  def join game
    "#{self.name} has joined the game"
  end

end
