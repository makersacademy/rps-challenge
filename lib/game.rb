require './lib/computer.rb'
require './lib/player.rb'

class Game

  attr_reader :outcomes, :game_combo, :player_weapon, :computer_weapon

  def initialize
    @outcomes = [
      ["rock", "scissors"],
      ["paper", "rock"],
      ["scissors", "paper"]
    ]

  end

  def battle(player_weapon, computer_weapon)
    
      if player_weapon == computer_weapon
         "Its a draw"
      elsif @outcomes.include?([player_weapon, computer_weapon])
        "you win"
      else
        "computer wins"
      end

        # @game_combo = {player_weapon.to_sym => computer_weapon}

      #  if @outcomes.find {|winner| winner == @game_combo}
      #    "you win"
      #  else
      #    "computer wins"
      #  end
  end
private

  # def winner?
  #
  # end

end
