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

  private

  SCORE = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }
end

rps = Rps.new(Player.new('will'), Robot.new)
p rps.player_move.name