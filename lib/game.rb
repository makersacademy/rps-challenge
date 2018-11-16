require 'player'

class Game

GAME_OPTIONS = ["Rock", "Paper", "Scissors"]

  attr_reader :player

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = player
  end

  def computer_choise
    GAME_OPTIONS[Kernel.rand(GAME_OPTIONS.count)]
  end

  

end
