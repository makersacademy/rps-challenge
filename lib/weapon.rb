class Weapon
  attr_reader :weapon

  def initialize(weapon)
    @weapon = weapon
  end

  def weapon=(weapon)
    fail 'Please select Rock, Paper or Scissors' unless [:rock, :paper, :scissors].include? weapon.downcase.to_sym
    @weapon = weapon
  end
end
