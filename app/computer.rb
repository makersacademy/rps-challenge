class Computer
  attr_reader :weapon
  def initialize(weapon = Weapon.new(''))
    @weapon = weapon
  end

  def play
    @weapon = Weapon.new(RULES.keys.sample)
  end
end
