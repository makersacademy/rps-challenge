require "./lib/player"

class Game

  def initialize(marketeer)
    $marketeer = marketeer
  end

  # def players
  #   @marketeer
  # end

  def marketeer_move
     @marketeer_move = $marketeer.move
  end

  def computer_move
    moves = ["rock", "paper", "scissors"]
    @computer_move = moves.sample
  end

  def run
    if @marketeer_move == @computer_move
      "Draw"
    elsif @marketeer_move == "rock" && @computer_move == "scissors"
      "#{$marketeer.name} wins"
    elsif @marketeer_move == "scissors" && @computer_move == "paper"
      "#{$marketeer.name} wins"
    elsif @marketeer_move == "paper" && @computer_move == "rock"
      "#{$marketeer.name} wins"
    elsif @marketeer_move == "scissors" && @computer_move == "rock"
      "Computer wins"
    elsif @marketeer_move == "paper" && @computer_move == "scissors"
      "Computer wins"
    elsif @marketeer_move == "rock" && @computer_move == "paper"
      "Computer wins"
    end
  end
end
