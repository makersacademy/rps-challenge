require './lib/players.rb'
require './lib/turn.rb'

class Game

  attr_reader :player, :turn, :score

  def initialize(name)
    @player = Player.new(name)
    @score = 0
  end

  def self.game(name)
    @game = Game.new(name)
  end

  def self.access
    @game
  end

  def play
    @turn = Turn.new
    'Play!'
  end

  def finish_turn
    @score += @turn.finish
  end
end
