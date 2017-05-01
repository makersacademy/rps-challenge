require_relative 'player'
require_relative 'computer'

class Game
  attr_reader :player_1, :game

  def initialize(player_1)
    @player_1 = player_1
  end

  def self.new_game(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end


end
