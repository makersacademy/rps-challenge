require_relative 'player'

class Game
  attr_reader :player_1, :player_2

  def initialize(player_1)
    @player_1 = player_1
    @moves = []
  end

  def player_move(move)
    @moves << @player_1.move(move)
  end

  # def store_move(move)
  #   @moves << @player_1.move(move)
  # end

  def last_action
    @moves.last
  end

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end
end
