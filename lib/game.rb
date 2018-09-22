class Game

  def initialize
    @moves = ["Rock", "Paper", "Scissors"]
  end

  def rock 
    @moves[0]
  end
  
  def paper
    @moves[1]
  end
  
  def scissors
    @moves[2]
  end

  def computer_move
    @computer_move = @moves.sample
  end

  def decision(player_move, computer_move)
    if player_move == "Rock" && computer_move == "Paper"
      "Computer is the winner!"
    elsif player_move == "Rock" && computer_move == "Rock"
      "It's a tie!"
    elsif player_move == "Rock" && computer_move == "Scissors"
      "You are the winner!"
    elsif player_move == "Paper" && computer_move == "Scissors"
      "Computer is the winner!"
    elsif player_move == "Paper" && computer_move == "Paper"
      "It's a tie!"
    elsif player_move == "Paper" && computer_move == "Rock"
      "You are the winner!"
    elsif player_move == "Scissors" && computer_move == "Rock"
      "Computer is the winner!"
    elsif player_move == "Scissors" && computer_move == "Scissors"
      "It's a tie!"
    else 
      "You are the winner!"
    end
  end
end
