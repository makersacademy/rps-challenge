require_relative 'weapon'

class Computer
  attr_reader :type

  def initialize
    @type = nil
  end

  def weapon
    @type = Weapon::WEAPONS.sample
  end
end
