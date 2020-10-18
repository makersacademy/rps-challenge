class Computer
  attr_reader :weapons, :name

  def initialize(name = 'Computer', weapons = ['rock', 'paper', 'scissors'])
    @weapons = weapons
    @name = name
  end

  def choice
    @weapons.sample
  end
end
