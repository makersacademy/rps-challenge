require_relative 'player'

class Game
  OPTIONS = ['rock', 'paper', 'scissors']
  attr_reader :weapon, :player

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end
end
