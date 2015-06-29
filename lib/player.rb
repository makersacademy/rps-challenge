class Player
  WEAPONS = ['rock', 'paper', 'scissors']

  attr_reader :weapon

  def initialize
    @weapon = ''
  end

  def choose weapon
    if Player::WEAPONS.include?(weapon)
      @weapon = weapon
    else
      fail 'Please choose either rock, paper or scissors'
    end
  end

end