class Computer
  attr_reader :name
  WEAPONS = ['rock', 'paper', 'scissors']

  def initialize
    @name = 'Computer'
  end

  def weapon
    WEAPONS.sample
  end
end
