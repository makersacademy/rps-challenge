require_relative 'player'

class Game
  OPTIONS = ['ROCK', 'PAPER', 'SCISSORS']
  attr_reader :player

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def computer_selection
    OPTIONS.sample
  end


end
