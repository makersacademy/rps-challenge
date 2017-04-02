require_relative 'player'
require_relative 'robot'

class Game

  attr_reader :player_1, :player_2, :playing, :rules

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @playing = player_1
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def switch_turn
    playing == player_1 ? self.playing = player_2 : self.playing = player_1
  end

  def winner
    player_1.hand.better?(player_2.hand) ? player_1 : player_2
  end

  private

  attr_writer :playing

end
