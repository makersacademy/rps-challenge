class Computer
  attr_reader :weapons, :name

  WEAPONS = ['rock', 'paper', 'scissors']

  def initialize(name = 'Computer', weapons = WEAPONS )
    @weapons = weapons
    @name = name
  end

  def choice
    @weapons.sample
  end
end
