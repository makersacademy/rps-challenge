require_relative 'user'

class Game

  MOVES = [:rock, :paper, :scissors]

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def player_2_move
    MOVES.sample.to_s
  end
end
