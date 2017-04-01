require_relative 'player'

class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def winner
    hand_1 = player_1.hand
    hand_2 = player_2.hand
    if hand_1=='scissors' && hand_2=='paper'
      player_1
    elsif hand_1=='rock' && hand_2=='scissors'
      player_1
    elsif hand_1=='paper' && hand_2=='rock'
      player_1
    else
      player_2
    end
  end

end
