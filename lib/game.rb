require_relative 'player'
require_relative 'computer'
class Game

  attr_reader :player1, :player2

  def initialize player1, player2
    @player1 = player1
    @player2 = player2
  end

  def restart_game
    @player1.won = 0
    @player2.won = 0
  end

  def referee
    a = player1.moves
    b = player2.moves

    if a == b
      "draw"
    elsif a == "rock" && b == "scissors"
      @player1.won += 1
    elsif a == "paper" && b == "scissors"
     @player2.won += 1
    elsif a == "scissors" && b == "paper"
     @player1.won += 1
    elsif a == "paper" && b == "rock"
      @player1.won += 1
    else
      @player2.won += 1
    end
    winner?
  end

  def winner?
    if @player1.won == 3
      "Player1 wins"
    elsif @player2.won == 3
      "Player2 wins"
    else
      "Keep playing to win"
    end
  end
end

