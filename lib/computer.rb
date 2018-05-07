class Computer

  attr_reader :weapon

  def initialize(weapon = ['Rock', 'Paper', 'Scissors'])
    @weapon = weapon.sample
  end

end
