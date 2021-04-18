# require_relative 'weapons'

class Player
  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end 
  
  def choose_weapon(weapon = Weapon.new.choices.sample)
    @weapon = weapon
  end  
end  