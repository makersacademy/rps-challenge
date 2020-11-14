class Game
  attr_reader :name, :user_move, :computer_move

  def initialize(name, user_move)
    @user_move = user_move
    @name = name
  end

  def move_sample
    ["Rock", "Paper", "Scissors"].sample
  end

  def round
    combinations = { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper" }
    @computer_move = move_sample
    if user_move == computer_move
      "It's a draw!"
    elsif combinations[user_move] == computer_move
      "You won!"
    else
      "You lost!"
    end
  end

end
