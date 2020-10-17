class Game
  attr_reader :computer_move, :user_move
  def initialize(user_move, computer)
    @user_move = user_move
    @computer_move = computer.choice
    @defeat = {"Rock" => "Paper", "Paper" => "Scissors", "Scissors" => "Rock"}
  end

  def result
    if tie
      return "It's a Draw"
    elsif computer_wins
      return "The Computer Wins"
    end
  end

  def tie
    @user_move == @computer_move
  end

  def computer_wins
    @computer_move == @defeat[@user_move]
  end
end