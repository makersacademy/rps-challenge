require_relative './player'

class Game

  attr_reader :player1, :player2

  def initialize (player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def check_winner
    raise "Not all players have made their selection!" if (player1.choice == nil || player2.choice == nil)
    return "It's a draw!!" if player1.choice == player2.choice
    case player1.choice
    when :Rock
      player2.choice == :Paper ? player2 : player1
    when :Paper
      player2.choice == :Scissors ? player2 : player1
    when :Scissors
      player2.choice == :Rock ? player2 : player1
    end
  end

end
