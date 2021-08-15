require "./lib/player.rb"

class Game
  attr_accessor :player1, :player2
  def initialize(player1, player2 = "Computer")
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
  end
end
