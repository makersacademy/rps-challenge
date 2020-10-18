class Game
  def initialize
    @scoring = {
        "rock" => "scissors",
        "scissors" => "paper",
        "paper" => "scissors"
    }
    @move_options = ["rock", "paper", "scissors"]
  end
  
  def bot_move
    @move_options.sample
  end
  
  def winner(p1move)
    computer_move = bot_move 
    if @scoring[p1move] == computer_move
      "Player 1 wins!"
    elsif p1move == computer_move
      "It's a draw!"
    else
      "The computer wins!" 
    end
  end
end