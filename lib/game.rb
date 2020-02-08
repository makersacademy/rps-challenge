require_relative 'player'

class Game
  attr_reader :player, :move

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = (player)
  end

  def computer_move
    @move = ["Scissors", "Paper", "Rock"].sample
  end
end
