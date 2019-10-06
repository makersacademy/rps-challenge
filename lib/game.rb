require_relative 'move'
require_relative 'player'

class Game
  attr_reader :player_1, :move

  def initialize(player_1, move)
    @player_1 = player_1
    @move = move
  end

  def player_last_action
    @move.player_turns.last
  end

  def computer_last_action
    @move.computer_turns.last
  end

  private

  def self.create(player_1, move)
    @game = Game.new(player_1, move)
  end

  def self.instance
    @game
  end
end
