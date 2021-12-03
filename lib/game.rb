class Game
  def initialize(player1 = Player.new, player2 = Computer.new)
    @player1 = player1
    @player2 = player2
  end

  def get_outcome(player1_choice, player2_choice)
    return "Draw" if player1_choice == player2_choice
    if player1_choice == "Rock"
      case player2_choice
      when "Paper"
        @player2.name
      when "Scissors"
        @player1.name
      end
    elsif player1_choice == "Paper"
      case player2_choice
      when "Rock"
        @player1.name
      when "Scissors"
        @player2.name
      end
    else
      case player2_choice
      when "Rock"
        @player2.name
      when "Paper"
        @player1.name
      end
    end
  end
end