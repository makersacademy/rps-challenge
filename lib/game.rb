require './lib/computer.rb'
require './lib/player.rb'

class Game

  attr_reader :outcomes, :game_combo

  def initialize
    @outcomes = {
      rock: "scissors",
      paper: "rock",
      scissors: "paper"
    }
    @game_combo = {}
  end

  def battle(player_weapon, computer_weapon)
      "Its a draw" if player_weapon == computer_weapon
      @game_combo[player_weapon] = computer_weapon

       if outcomes.select {|winner| winner == game_combo}
         "you win"
       else
         "computer wins"
       end
  end

end
