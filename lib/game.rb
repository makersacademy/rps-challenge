class Game

  attr_reader :user_move
  def initialize(user_move)
    @user_move = user_move
  end

  def determine_auto_move
    move_options = ["rock", "paper", "scissors"]
    @auto_move = move_options.sample
  end

  def determine_winner
    return "You win!" if @user_move == "scissors" && @auto_move == "paper"
    return "You lose!" if @user_move == "scissors" && @auto_move == "rock"
    return "You win!" if @user_move == "paper" && @auto_move == "rock"
    return "You lose!" if @user_move == "paper" && @auto_move == "scissors"
    return "You win!" if @user_move == "rock" && @auto_move == "scissors"
    return "You lose!" if @user_move == "rock" && @auto_move == "paper"
    return "It's a draw!" if @user_move == @auto_move
  end
end
