class ResultsCalculator
  attr_reader :computer_move, :user_move

  def initialize(user, computer)
    @user_move = user.move
    @computer_move = computer.move
    @beats = { "Rock" => "Paper", "Paper" => "Scissors", "Scissors" => "Rock" }
  end

  def result
    return "It's a Draw" if tie
    return "The Computer Wins" if computer_wins
    return "You Win" if user_wins
  end

  private 

  def tie
    @user_move == @computer_move
  end

  def computer_wins
    @computer_move == @beats[@user_move]
  end

  def user_wins
    @user_move = @beats[@computer_move]
  end
end
