class Choice

  def initialize(weapon)
    @weapon = weapon
  end

  def available?(weapon = @weapon)
    weapons = [:rock, :paper, :scissors, :spock, :lizard]
    weapons.include?(weapon.downcase.to_sym)
  end
end
