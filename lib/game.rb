
class Game
  attr_reader :player1, :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def retrieve_winner(player1, player2)
    return nil if player1.choice == player2.choice
    case player1.choice
    when :rock
      return player1 if player2.choice == :scissors
      return player2 if player2.choice == :paper
    when :paper
      return player1 if player2.choice == :rock
      return player2 if player2.choice == :scissors
    when :scissors
      return player1 if player2.choice == :paper
      return player2 if player2.choice == :rock 
    end
  end

end