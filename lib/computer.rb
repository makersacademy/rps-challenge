require_relative 'weapon.rb'

class Computer

  attr_accessor :weapon, :random_weapon

  def initialize(weapon = Weapon.new)
    @weapon = weapon
    @random_weapon = @weapon.weapon_choice.sample
  end
end
