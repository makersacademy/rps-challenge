class Computer

  attr_reader :weapon

  def initialize(weapon = ['Rock', 'Paper', 'Scissors'])
    @weapon = weapon
  end

  def random_weapon
    @weapon.sample
  end

end
