class Game

  attr_reader :user_move

  def initialize(user_move)
    @user_move = user_move
  end

  def determine_computer_move
    computer_move = ["rock", "paper", "scissors"].sample
    set_computer_move(computer_move)
  end

  def set_computer_move(computer_move)
    @computer_move = computer_move
  end

  def result
    return "You win!" if @user_move == "scissors" && @computer_move == "paper"
    return "You lose!" if @user_move == "scissors" && @computer_move == "rock"
    return "You win!" if @user_move == "paper" && @computer_move == "rock"
    return "You lose!" if @user_move == "paper" && @computer_move == "scissors"
    return "You win!" if @user_move == "rock" && @computer_move == "scissors"
    return "You lose!" if @user_move == "rock" && @computer_move == "paper"
    return "It's a draw!" if @user_move == @computer_move
  end
end
