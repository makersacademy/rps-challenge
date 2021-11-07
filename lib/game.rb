require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :players, :game

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def initialize(player, computer)
    @players = [player, computer]
  end

  def player
    @players.first
  end

  def computer
    @players.last
  end

  def reset 
    @players.first.move = nil
    @players.last.move = nil
  end

end