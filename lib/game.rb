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
        "#{@player2} wins!"
      when "Scissors"
        "#{@player1} wins!"
      end
    elsif player1_choice == "Paper"
      case player2_choice
      when "Rock"
        "#{@player1} wins!"
      when "Scissors"
        "#{@player2} wins!"
      end
    else
      case player2_choice
      when "Rock"
        "#{@player2} wins!"
      when "Paper"
        "#{@player1} wins!"
      end
    end
  end
end
