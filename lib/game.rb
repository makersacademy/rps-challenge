require_relative 'scores'

class Game

  def initialize
    @scores = Scores.new
  end

  def game_result(player1, player2)
    if player1 == player2
      return "Draw"
    elsif player1 == "Rock" and player2 == "Scissors"
      return "Player 1 Wins"
    elsif player1 == "Rock" and player2 == "Lizard"
      return "Player 1 Wins"
    elsif player1 == "Scissors" and player2 == "Paper"
      return "Player 1 Wins"
    elsif player1 == "Scissors" and player2 == "Lizard"
      return "Player 1 Wins"
    elsif player1 == "Paper" and player2 == "Rock"
      return "Player 1 Wins"
    elsif player1 == "Paper" and player2 == "Spock"
      return "Player 1 Wins"
    elsif player1 == "Spock" and player2 == "Scissors"
      return "Player 1 Wins"
    elsif player1 == "Spock" and player2 == "Rock"
      return "Player 1 Wins"
    elsif player1 == "Lizard" and player2 == "Spock"
      return "Player 1 Wins"
    elsif player1 == "Lizard" and player2 == "Paper"
      return "Player 1 Wins"
    else
      return "Player 2 Wins"
    end
  end

  def score_keeper(result)
    @scores.scores(result)
  end



end
