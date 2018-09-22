class Game

  def initialize
    @moves = ["Rock", "Paper", "Scissors"]
  end

  def move 
    @player_move = @moves.sample
  end

  def computer_move
    @computer_move = @moves.sample
  end

  def decision(player_move, computer_move)
    if player_move == "Rock" && computer_move == "Paper"
      "Computer wins!"
    elsif player_move == "Rock" && computer_move == "Rock"
      "It's a tie!"
    elsif player_move == "Rock" && computer_move == "Scissors"
      "Player wins!"
    elsif player_move == "Paper" && computer_move == "Scissors"
      "Computer wins!"
    elsif player_move == "Paper" && computer_move == "Paper"
      "It's a tie!"
    elsif player_move == "Paper" && computer_move == "Rock"
      "Player wins!"
    elsif player_move == "Scissors" && computer_move == "Rock"
      "Computer wins!"
    elsif player_move == "Scissors" && computer_move == "Scissors"
      "It's a tie!"
    else 
      "Player wins!"
    end
  end
end
