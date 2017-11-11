require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def set_choice(player, choice)
    player.receive_choice(choice)
  end

  def decider
    case
      when player1.choice == "Rock" && player2.choice == "Scissors"
        player1.name
      when player1.choice == "Scissors" && player2.choice == "Paper"
        player1.name
      when player1.choice == "Paper" && player2.choice == "Rock"
        player1.name
      when  player1.choice == player2.choice
        "Draw"
      else
        player2.name
    end
  end
end
