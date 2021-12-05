class Game
  attr_reader :player, :computer_move

  def initialize(player)
    @player = player
    @computer_move = nil
  end

  def play
    @computer_move = rand_choice
    player_move = @player.move
    check_winner(player_move, computer_move)
  end

  def check_winner(move1, move2)
    if move1 == move2
      "You draw!"
    elsif (move1 == "rock" && move2 == "scissors") || 
          (move1 == "paper" && move2 == "rock") || 
          (move1 == "scissors" && move2 == "paper")
      "You win!"
    else
      "You lose!"
    end
  end

  def rand_choice
    ["rock","paper","scissors"].sample
  end
end
