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
    return "You win!" if @player.player_move == "Rock" && move == "Scissors"
    return "You lose!" if @player.player_move == "Rock" && move == "Paper"
    return "It's A Draw!" if @player.player_move == "Scissors" && move == "Scissors"
    return "You win!" if @player.player_move == "Scissors" && move == "Paper"
    return "You lose!" if @player.player_move == "Scissors" && move == "Rock"
    return "It's A Draw!" if @player.player_move == "Paper" && move == "Paper"
    return "You win!" if @player.player_move == "Paper" && move == "Rock"
    return "You lose!" if @player.player_move == "Paper" && move == "Scissors"
  end

end
