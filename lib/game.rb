require_relative './player'

class Game
  
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end


  def result
    return "You have tied" if player1.choice == player2.choice
    case player1.choice
    when :rock
      player2.choice == :paper ? "Computer Wins" : "Player Wins"
    when :paper
      player2.choice == :scissors ? "Computer Wins": "Player Wins"
    when :scissors
      player2.choice == :rock ? "Computer Wins" : "Player Wins"
    end
  end

end