require_relative "player"

class Game

  attr_reader :player, :game_move

  def initialize(player)
    @player = player
  end

  def move
    @game_move = ["Rock", "Paper", "Scissors"].sample
  end

  

end
