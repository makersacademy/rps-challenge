class Game
  attr_reader :player1, :player2

  def initialize(player1 = Player.new(name), player2 = Player.new(name))
    @player1 = player1
    @player2 = player2
  end

  def get_choice
    choice = ["Rock", "Paper", "Scissors"].sample
  end


  def get_winner(p1_choice, p2_choice, p1_name, p2_name)
    @p1_choice = p1_choice
    @p2_choice = p2_choice
    @p1_name = p1_name
    @p2_name = p2_name

    if p1_choice == "Rock" && p2_choice == "Scissors" || p1_choice == "Paper" && p2_choice == "Rock" || p1_choice == "Scissors" && p2_choice == "Paper"
      $msg = "YOU WIN!"

    elsif p1_choice == "Rock" && p2_choice == "Paper" || p1_choice == "Paper" && p2_choice == "Scissors" || p1_choice == "Scissors" && p2_choice == "Rock"
      $msg = "YOU LOSE!"

    else p1_choice == "Rock" && p2_choice == "Rock" || p1_choice == "Paper" && p2_choice == "Paper" || p1_choice == "Scissors" && p2_choice == "Scissors"
      $msg = "IT'S A DRAW!"
    end
  end
end
