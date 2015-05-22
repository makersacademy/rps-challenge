require_relative './player'

class GameLogic

  def initialize
    @game_rules = { "Rock" => ["Scissors", "Lizard"],
                    "Paper" => ["Rock", "Spock"],
                    "Scissors" => ["Paper", "Lizard"],
                    "Lizard" => ["Paper", "Spock"],
                    "Spock" => ["Scissors", "Rock"] }
    end

  def result cpu, player
    if cpu.choice == player.choice
      "It's a tie"
    elsif @game_rules[player.choice].include?(cpu.choice)
      "You win"
    else
      "The computer wins"
    end
  end

end