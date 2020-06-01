require_relative 'comp.rb'

class Game

  def initialize(weapon = $weapon, comp_weapon = Comp.new.comp_weapon)
    @weapon = weapon
    $comp_weapon = comp_weapon
  end

  def play_game
    if @weapon == $comp_weapon
      "Draw"
    elsif @weapon == "rock" && $comp_weapon == "scissors"
      "rock beats scissors, player wins the round."
    elsif @weapon == "scissors" && $comp_weapon == "paper"
      "scissors beat paper, player wins the round."
    elsif @weapon == "paper" && $comp_weapon == "rock"
      "paper beats rock, player wins the round."
    else
      "You lose!!"
    end
  end
end
