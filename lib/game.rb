require_relative 'player'
require_relative 'computer'

class Game

  RULES = { "rock" => { "rock" => "draw", "paper" => "lose", "scissors" => "win"},
            "paper" => { "rock" => "win", "paper" => "draw", "scissors" => "lose"},
            "scissors" => { "rock" => "lose", "paper" => "win", "scissors" => "draw"}, }

  attr_reader :player, :computer
  WEPONS = ['Rock', 'Paper', 'Scissors']

  def initialize( player, computer)
    @player = player
    @computer = computer
  end

  def result
    p winner? ? "You #{RULES[(player.weapon).to_s][(computer.chosen_weapon).downcase]}" : "You #{RULES[(player.weapon).to_s][(computer.chosen_weapon).downcase]}"
  end

  private

  def winner?
    RULES[(player.weapon).to_s][(computer.chosen_weapon).downcase] == "win" || "lose"
  end

end
