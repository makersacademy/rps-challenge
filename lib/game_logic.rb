require_relative './cpu'
require_relative './player'

class GameLogic

  def initialize
    @game_rules = { "Rock" => "Scissors",  "Paper" => "Rock", "Scissors" => "Paper" }
  end

  def result cpu, player
    if cpu.choice == player.choice
      "It's a tie"
    elsif @game_rules[player.choice] == cpu.choice
      "You win"
    else
      "The computer wins"
    end
  end

end