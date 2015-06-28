require 'player'
require 'cpu_player'

class Game


  def initialize
    @rules = { paper: [:scissors],
               rock: [:paper],
               scissors: [:rock] }
  end

  def game(player_choice, cpu_choice)
   puts player_choice
   puts cpu_choice
    if player_choice == cpu_choice
      "CPU chooses #{cpu_choice} - It's a tie!"
    elsif
      @rules[player_choice].include? cpu_choice
      "CPU chooses #{cpu_choice} - YOU LOSE"
    else
      "CPU chooses #{cpu_choice} - YOU WIN!"
    end
  end
end
