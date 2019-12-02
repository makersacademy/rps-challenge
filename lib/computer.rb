
class Computer
  attr_reader :weapon
  def initialize(weapon = (Weapon.new).weapons)
    @weapon = weapon
  end
end
