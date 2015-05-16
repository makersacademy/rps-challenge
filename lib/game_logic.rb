require_relative './cpu'
require_relative './player'

class Game_Logic

  def initialize
    @game_rules = {"Rock" => "Scissors",  "Paper" => "Rock", "Scissors" => "Paper"}
  end

  def result cpu, player
    if cpu.choice == player.choice
      "It's a tie"
    elsif @game_rules[player.choice] == cpu.choice
      "Player wins"
    else
      "CPU wins"
    end
  end

end