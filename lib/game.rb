require_relative 'player'

class Game

  attr_reader :player1, :player2

  def initialize(player1 = Player.new, player2 = Player.new)
    @player1 = player1
    @player2 = player2
  end

  def play
		if player1.choice == player2.choice
      "It's a tie!"
    elsif player1.choice == :rock && player2.choice == :scissors ||
       player1.choice == :paper && player2.choice == :rock ||
       player1.choice == :scissors && player2.choice == :paper
      "Player 1 wins!"
    else
      "Player 2 wins!"
    end
  end

end
