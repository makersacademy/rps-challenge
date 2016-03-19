require './lib/player'
require 'byebug'

class Game

  attr_reader :player1, :game_points

  def self.create_game(player1, player_klass = Player)
    @player_klass = player_klass
    @game = Game.new(@player_klass.new(player1))
  end

  def self.instance_of_game
    @game
  end

  def initialize(player1)
    @player1 = player1
  end

  def set_points(points)
    @game_points = points
  end
end
