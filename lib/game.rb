require_relative "player"

class Game

  attr_reader :player

  def initialize(player)
    @player = player
  end

  def move
    ["Rock", "Paper", "Scissors"].sample
  end

  def calculate
    move
    return "It's A Draw!" if @player.player_move == "Rock" && move == "Rock"
  end

end
