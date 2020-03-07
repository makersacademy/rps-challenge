require_relative './results'
require_relative './player'

class Game
attr_reader :player_1, :player_2, :current_player

  def initialize(player_1, player_2)
    @turn = true
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
    end

# class methods for singleton principle - lets us only have one game

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

end
