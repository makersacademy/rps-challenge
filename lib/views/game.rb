require 'robot'
require 'player'
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

  def play
    @robot.generate_robot_choice
    score_calculator
  end

end
