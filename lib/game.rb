
class Game

  attr_reader :winner, :loser

  def workout_winner(player, comp)
    if (player == "rock" && comp == "scissors") ||
      (player == "scissors" && comp == "paper") ||
      (player == "paper" && comp == "rock")
      @winner = 'computer'
      @loser = 'adam'
    else
      @winner = 'adam'
      @loser = 'computer'
    end
  end

end
