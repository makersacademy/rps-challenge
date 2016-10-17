require './lib/robot'
require './lib/player'
class Game

  NEUTRAL_SCORE = 0

  attr_reader :turn, :score, :weapons, :user_wins, :robot_wins, :random_pick

  def initialize(choice)
    @turn = [choice]
    @robot = Robot.new
    @score = NEUTRAL_SCORE
    @user_wins = [['rock', 'scissors'], ['paper', 'rock'], ['scissors', 'paper']]
    @robot_wins = [['scissors', 'rock'], ['rock','paper'], ['paper', 'scissors']]
  end

  def score_calculator
    @score +=1 if @user_wins.include?(@turn)
    @score -=1 if @robot_wins.include?(@turn)
  end

  def input_random_choice(random_pick)
    turn[1] = random_pick
  end

  def play
    @robot.randomise_robot
    input_random_choice(@robot.robot_pick)
    score_calculator
  end

end
