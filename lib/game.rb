require_relative './player'
class Game
  attr_reader :player1, :player2, :game
  def initialize(player1, player2 = Player.new("Computer"))
    @player1 = player1.name
    @player2 = player2.name
  end

  def self.create(player1, player2 = Player.new("Computer"))
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end 
end