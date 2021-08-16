require_relative 'player'
require_relative 'robot'

class Rps
  attr_reader :player_move, :robot_move, :game, :score

  SCORE = 1

  def initialize(player_move, robot_move, score = SCORE)
    @player_move = player_move
    @robot_move = robot_move
    @game = game
    @score = score
  end

  def self.create(player_move, robot_move, score)
    @game = Rps.new(player_move, robot_move, score = SCORE)
  end

  def self.instance
    @game
  end

  def result
    signs = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }

    # return 'Draw!' if (@player_move == @robot_move)
    # return 'Victory!' if (score[@player_move] == @robot_move)
    # return 'Defeat!' if (score[@robot_move] == @player_move)

    (@score = score + 0) if (@player_move == @robot_move)
    (@score = score + 1) if (signs[@player_move] == @robot_move)
    (@score = score - 1) if (signs[@robot_move] == @player_move)
  end
end

rps = Rps.new('rock', 'scissors')
rps.result
p rps