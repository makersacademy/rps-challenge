
class Game

  def initialize(player_name, player)
    @pc = ["rock", "paper", "scissors"].sample
    @player_name = player_name
    @player = player
  end

  def play
    if @player == @pc
      return "It's a draw"
    elsif @player == "rock" && @pc == "paper"
      return "PC wins"
    elsif @player == "rock" && @pc == "scissors"
      return "#{@player} wins"
    elsif @player == "paper" && @pc == "rock"
      return "#{@player} wins"
    elsif @player == "paper" && @pc == "scissors"
      return "PC wins"
    elsif @player == "scissors" && @pc == "rock"
      return "PC wins"
    elsif @player == "scissors" && @pc == "paper"
      return "#{@player} wins"
    end
  end
end
