require_relative 'player'
require_relative 'computerplayer'


class Game

  def initialize 
    @winners = {"Rock" => "Scissors",
                "Scissors" => "Paper", 
                "Paper" => "Rock"}
  end

  def result player1, player2 = Computer.new.choose
    return "Player 1 wins" if @winners[player1] == player2
    return "Player 2 wins" if @winners[player2] == player1
    return "Draw" if player1 == player2
  end


end