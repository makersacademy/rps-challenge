class Rps

  attr_accessor :cm

  def random_output
    rand(1..3)
  end 

  def move(num = random_output)
    return "Rock" if num === 1
    return "Paper" if num === 2
    return "Scissors" if num === 3
  end 

  def calculate_result(user_move, c_move = move)

    @cm = c_move

    if user_move == "Scissors" && @cm == "Paper"
      return "Winner"
    elsif user_move == "Paper" && @cm == "Rock"
      return "Winner"
    elsif user_move == "Rock" && @cm == "Scissors"
      return "Winner"
    elsif user_move == "Scissors" && @cm == "Scissors"
      return "Draw"
    elsif user_move == "Rock" && @cm == "Rock"
      return "Draw"
    elsif user_move == "Paper" && @cm == "Paper"
      return "Draw"
    else
      return "Loser"
    end
  end 

  def compmove
    @cm
  end 

end
