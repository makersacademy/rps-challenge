require_relative 'player'

class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def result
    player2_game = @player2.weapon
    player1_game = @player1.weapon

    return "Player 1 wins" if player1_game == "Paper" && player2_game == "Rock"
    return "Player 1 wins" if player1_game == "Rock" && player2_game == "Scissors"
    return "Player 1 wins" if player1_game == "Scissors" && player2_game == "Paper"
    return "Player 2 wins" if player2_game == "Paper" && player1_game == "Rock"
    return "Player 2 wins" if player2_game == "Rock" && player1_game == "Scissors"
    return "Player 2 wins" if player2_game == "Scissors" && player1_game == "Paper"
    return "Players have drawn" if player1_game == player2_game

  end
end
