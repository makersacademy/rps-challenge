class Game
  attr_reader :player

  def initialize(player)
    @player = player
  end

  def play
    computer_move = rand_choice
    player_move = @player.move
    if player_move == computer_move
      "It's a draw!"
    elsif (player_move == "r" && computer_move == "s") || 
          (player_move == "p" && computer_move == "r") || 
          (player_move == "s" && computer_move == "p")
      "It's a win!"
    else
      "You lose!"
    end
  end

  def rand_choice
    ["r","p","s"].sample
  end
end