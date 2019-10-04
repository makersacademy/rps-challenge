require_relative 'player'

class Game
  attr_accessor :player1, :player2

  def initialize(player1, player2 = Player.new)
    @player1 = player1
    @player2 = player2
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game
  end

end