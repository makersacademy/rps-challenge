require_relative 'player'
require_relative 'opponent'

class RPS

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = RPS.new(player)
  end

  def self.instance
    @game
  end

  def display_players(name=@player)
    name
  end

  def opponent_move(move=@opponent_move)
    @opponent_move
  end

  def rock
    Opponent.create_opponent
    Opponent.instance.move
    @opponent_move = Opponent.instance.opponent_move
  end
end
