#Understands how to pick a weapon

class Player

  WEAPONS = [:rock, :paper, :scissors]

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
    @weapon = nil
  end

  def pick_weapon(weapon)
    input = weapon.to_sym
    fail "This weapon is not available" unless WEAPONS.include? input
    @weapon = WEAPONS.select { |choice| choice == input }
  end

end
