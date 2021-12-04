class Game
  attr_reader :player, :computer_move

  def initialize(player)
    @player = player
    @computer_move = nil
  end

  def play
    @computer_move = rand_choice
    player_move = @player.move
    if player_move == computer_move
      "You draw!"
    elsif (player_move == "rock" && computer_move == "scissors") || 
          (player_move == "paper" && computer_move == "rock") || 
          (player_move == "scissors" && computer_move == "paper")
      "You win!"
    else
      "You lose!"
    end
  end

  def rand_choice
    ["rock","paper","scissors"].sample
  end
end