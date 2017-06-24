

class Player

  attr_reader :name, :weapon

  def initialize(name='computer')
    @name = name
    @weapon = nil
  end

  def weapon_of_choice_is(weapon)
    @weapon = weapon
  end

end
