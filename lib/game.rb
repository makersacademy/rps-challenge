class Game

  attr_reader :winner, :loser, :draw

  def initialize(player)
    @player = player
  end

  def workout_winner(player, comp)
    if (player == "rock" && comp == "scissors") ||
      (player == "scissors" && comp == "paper") ||
      (player == "paper" && comp == "rock")
      @winner = @player.player_name
      @loser = 'computer'
    elsif (player == "rock" && comp == "rock") ||
      (player == "scissors" && comp == "scissors") ||
      (player == "paper" && comp == "paper")
      @draw = 'it was a draw'
    else
      @winner = 'computer'
      @loser = @player.player_name
    end
  end

end
