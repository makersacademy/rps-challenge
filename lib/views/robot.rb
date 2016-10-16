class Robot

  NEUTRAL_SCORE = 0

  attr_reader :turn, :score, :weapons, :user_wins, :robot_wins, :random_pick

  def initialize
    @weapons = ['rock', 'paper', 'scissors']
  end

  def randomise_robot
    @random_pick = @weapons.sample
  end

  def input_random_choice(random_pick)
    @turn[1] = random_pick
  end

  def generate_robot_choice
    randomise_robot
    input_random_choice(@random_pick)
  end
end
