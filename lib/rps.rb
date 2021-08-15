require_relative 'player'
require_relative 'robot'

class Rps
  attr_reader :player_move, :robot_move, :game

  def initialize(player_move, robot_move)
    @player_move = player_move
    @robot_move = robot_move
    @game = game
  end

  def self.create(player_move, robot_move)
    @game = Rps.new(player_move, robot_move)
  end

  def self.instance
    @game
  end

  def result
    score = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }

    return 'Draw!' if (@player_move == @robot_move)
    return 'Victory!' if (score[@player_move] == @robot_move)
    return 'Defeat!' if (score[@robot_move] == @player_move)
  end

end
