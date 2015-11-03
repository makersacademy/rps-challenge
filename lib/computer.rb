require_relative 'weapon'

class Computer

  attr_reader :name

  def initialize(name = 'Skynet', weapon = Weapon.new)
    @name = name
    @weapon = weapon
  end

  def choose_rand
    @weapon.choose_rand_weapon
  end

end
