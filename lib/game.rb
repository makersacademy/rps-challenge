require_relative './player'

class Game
  def self.create(name1, name2, player = Player)
    @game = new(name1, name2, player)
  end

  def self.instance
    @game
  end

  attr_reader :player1, :player2

  def initialize(name1, name2, player = Player)
    @player1 = player.new(name1)
    @player2 = player.new(name2)
  end

  def result
    "It's a draw"
  end
end
