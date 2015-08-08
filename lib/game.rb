require_relative 'player'
require_relative 'computer_player'

class Game
  def initialize
    @trumps = { :rock => :scissors, :paper => :rock, :scissors => :paper }
  end

  def winner(player1, player2)
    return player1 if @trumps[player1.choice] == player2.choice
    return player2 if @trumps[player2.choice] == player1.choice
    return :draw if player1.choice == player2.choice
  end
end