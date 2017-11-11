require './lib/players.rb'
require './lib/turn.rb'

class Game

  attr_reader :player, :turn

  def initialize(name)
    @player = Player.new(name)
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
end
