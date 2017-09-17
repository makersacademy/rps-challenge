require_relative 'weapon.rb'

class Player

  attr_reader :name, :weapon

  def initialize(name, weapon = Weapon.new)
    @name = name
    @weapon = weapon
  end
end


#Player can choose a weapon
#That will be passed in as a
