class Choice

  attr_reader :weapon

  def initialize(weapon)
    @weapon = weapon.to_sym
  end

  def available?(weapon = @weapon)
    weapons = [:rock, :paper, :scissors, :spock, :lizard]
    weapons.include?(weapon.downcase.to_sym)
  end
end
