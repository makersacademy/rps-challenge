require './lib/choice'

class Winner

  attr_accessor :computer_move

  def calculate_result(user_move, computer_move = Choice.new.random_choose )

    @user_move = user_move
    @computer_move = computer_move

    if @user_move == "Scissors" && @computer_move == "Paper"
      return "Winner"
    elsif @user_move == "Paper" && @computer_move == "Rock"
      return "Winner"
    elsif @user_move== "Rock" && @computer_move == "Scissors"
      return "Winner"
    elsif @user_move == "Scissors" && @computer_move == "Scissors"
      return "Draw"
    elsif @user_move == "Rock" && @computer_move == "Rock"
      return "Draw"
    elsif @user_move == "Paper" && @computer_move == "Paper"
      return "Draw"
    else
      return "Loser"
    end
  end 

  def compmove
    @computer_move
  end 

end
