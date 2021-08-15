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

    if @player_move == @robot_move
      return 'Draw!'
    elsif score[@player_move] == @robot_move
      return 'Victory!'
    else return 'Defeat!'
    end
  end

end

# rps = Rps.new(Player.new('will'), Robot.new)
# rps.player_move.players_move('rock')

rps = Rps.new('scissors', 'rock')
p rps.result

# a = Rps.new('rock', 'rock')
# b = Rps.new('paper', 'rock')
# c = Rps.new('scissors', 'rock')
# p a.result
# p b.result
# p c.result