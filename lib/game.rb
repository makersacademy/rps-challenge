require_relative 'player1'
require_relative 'computer'
class Game

  attr_accessor :player1, :player2
  def initialize player1,player2
    @player1 = player1
    @player2 = player2
  end

  def winner? 
    a = player1.moves
    b = player2.moves

    if a == b 
      "draw"
    elsif a = "rock" && b = "scissors"
      "player1 wins"
    elsif a = "paper" && b = "scissors" 
     "player2 wins"
    elsif a = "scissors" && b = "paper"
     "player1 wins"
    elsif a = "paper" && b = "rock"
      "player1 wins"
    else 
      "player2 wins"
    end     
  end
end

