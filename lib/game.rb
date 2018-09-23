require './lib/computer'

class Game

  OPTIONS = [:Rock, :Paper, :Scissors]
  RULES = {
    Rock: :Scissors,
    Paper: :Rock,
    Scissors: :Paper
  }

  def player_move(weapon)
    fail 'not a possible weapon' unless OPTIONS.include? weapon
    @player_move = weapon
  end
end
