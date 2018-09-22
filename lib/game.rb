require_relative "player"

class Game

  attr_reader :player, :game_move

  def initialize(player)
    @player = player
  end

  def move
    ["Rock", "Paper", "Scissors"].sample
  end

  def calculate
    move
    if @player.player_move == "Rock" && move == "Rock"
      return "It's A Draw!"
    else
      return "huh?"
    end
  end

end
