class Computer

  attr_accessor :weapon, :random_weapon

  def initialize(weapon = ['Rock', 'Paper', 'Scissors'])
    @weapon = weapon
    select_weapon
  end

  def select_weapon
    @random_weapon = weapon.sample
  end

end
