class Computer
  attr_reader :name

  WEAPONS = ['rock', 'paper', 'scissors']

  def initialize
    @name = 'Computer'
  end

  def computer_play
    WEAPONS.sample
  end

end
