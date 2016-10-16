require './views/game'
class Robot

  NEUTRAL_SCORE = 0

  attr_reader :robot_pick

  def initialize
    @weapons = ['rock', 'paper', 'scissors']
    @robot_pick =nil
  end

  def randomise_robot
    @robot_pick = @weapons.sample
  end

end
