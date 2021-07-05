class Game

  def initialize(player_name)
    @moves = ["rock", "paper", "scissors"]
    @player_name = player_name
  end 

  def generate_move
    @moves.sample
  end 

  def generate_result(computer_move, player_move)
    if computer_move == "rock" 
      if player_move == "paper"
        return "#{@player_name} won the game"
      elsif player_move == "scissors"
        return "Computer won the game"
      else
        return "it is a draw"
      end 
    end 

    if computer_move == "paper" 
      if player_move == "scissors"
        return "#{@player_name} won the game"
      elsif player_move == "rock"
        return "Computer won the game"
      else
        return "it is a draw"
      end 
    end 

    if computer_move == "scissors" 
      if player_move == "rock"
        return "#{@player_name} won the game"
      elsif player_move == "paper"
        return "Computer won the game"
      else
        return "it is a draw"
      end 
    end 
  end  
end 