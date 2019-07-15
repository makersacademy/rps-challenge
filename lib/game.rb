require_relative 'player'

class Game
  attr_reader :player_1, :player_2
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def start_game
    #human wins
    if (player_1.move == "rock" && player_2.move == "scissors") || (player_1.move == "scissors" && player_2.move == "paper") || (player_1.move == "paper" && player_2.move == "rock")
        return "#{player_1.name} wins!"

    #draws
  elsif (player_1.move == "rock" && player_2.move == "rock") || (player_1.move == "paper" && player_2.move == "paper") || (player_1.move == "scissors" && player_2.move == "scissors")
        return "Draw!"

    #computer wins
    else
      return "#{player_2.name} wins!"
    end
  end
end
