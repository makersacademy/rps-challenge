class Computer
  attr_reader :name, :weapon

  WEAPONS = ['rock', 'paper', 'scissors']

  def initialize
    @name = 'Computer'
  end

  def computer_play
    @weapon = WEAPONS.sample
  end

end
