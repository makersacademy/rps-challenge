require_relative 'game'

class Player 
  attr_reader :name, :hp 

  DEFAULT_HP = 100 
  DMG = 10

  def initialize(name, hp = DEFAULT_HP)
    @name = name 
    @hp = hp
  end 

  def damage
    @hp -= DMG 
  end 

end 
