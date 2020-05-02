class Rps

  def random_output
    rand(1..3)
  end 

  def move(num = random_output)
    if num === 1
      return "Rock"
    end 
    if num === 2 
      return "Paper"
    end 
    if num === 3
      return "Scissors"
    end 
  end 

  def calculate_result(user_move, c_move = move)
    if user_move == "Scissors" && c_move == "Paper"
      return "Winner"
    elsif user_move == "Paper" && c_move == "Rock"
      return "Winner"
    elsif user_move == "Rock" && c_move == "Scissors"
      return "Winner"
    elsif user_move == "Scissors" && c_move == "Scissors"
      return "Draw"
    elsif user_move == "Rock" && c_move == "Rock"
      return "Draw"
    elsif user_move == "Paper" && c_move == "Paper"
      return "Draw"
    else
      return "Loser"
    end
  end 
end
