require_relative 'player'
require_relative 'rules'

class Game

  attr_reader :player_1, :player_2, :solo, :playing, :rules

  def initialize(player_1, player_2, solo)
    @player_1 = player_1
    @player_2 = player_2
    @solo = solo
    @playing = player_1
    @rules = Rules.spock
  end

  def self.create(player_1, player_2, solo)
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

  def robot
    hands = []
    rules.each do |x,y|
      hands << y
    end
    player_2.set_hand(hands.sample)
  end

  private

  attr_writer :playing

  def better?(hand_1, hand_2)
    hand_1.better?(hand_2.name)
  end

end
