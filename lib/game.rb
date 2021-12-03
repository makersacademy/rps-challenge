class Game
  def initialize(player1 = "Player 1", player2 = "Computer")
    @player1 = player1
    @player2 = player2
  end

  def get_outcome(player1_choice, player2_choice)
    return "Draw" if player1_choice == player2_choice
    if player1_choice == "Rock"
      case player2_choice
      when "Paper"
        @player2
      when "Scissors"
        @player1
      end
    elsif player1_choice == "Paper"
      case player2_choice
      when "Rock"
        @player1
      when "Scissors"
        @player2
      end
    else
      case player2_choice
      when "Rock"
        @player2
      when "Paper"
        @player1
      end
    end
  end
end