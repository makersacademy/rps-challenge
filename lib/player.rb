
class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def selection(weapon)
    fail "not a possible weapon" unless [:rock, :paper, :scissors].include?(weapon.to_sym)
    @weapon = weapon
  end
end
