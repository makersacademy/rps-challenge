require_relative 'player'

class Game

  attr_reader :player_1, :player_2, :solo, :playing

  def initialize(player_1, player_2, solo)
    @player_1 = player_1
    @player_2 = player_2
    @solo = solo
    @playing = player_1
  end

  def self.create(player_1, player_2, solo=true)
    @game = Game.new(player_1, player_2, solo)
  end

  def self.instance
    @game
  end

  def switch_turn
    playing == player_1 ? self.playing = player_2 : self.playing = player_1
  end

  def winner
    better?(player_1.hand, player_2.hand) ? player_1 : player_2
  end

  private

  attr_writer :playing

  def better?(hand_1,hand_2)
    (hand_1=='scissors' && hand_2=='paper') || (hand_1=='rock' && hand_2=='scissors') || (hand_1=='paper' && hand_2=='rock')
  end

end
