require_relative 'player'
require_relative 'comp'

class Game

  def initialize(player, comp = Comp.new)
    @player = player
    @comp = comp
  end

  def comp_choice
    return @comp.make_choice
  end
  
  def winner(player_choice, comp_choice)
    if (player_choice == "Rock" && comp_choice == "Scissors") || (player_choice == "Scissors" && comp_choice == "Paper") || (player_choice == "Paper" && comp_choice == "Rock")
      return "You win!"
    elsif player_choice == comp_choice
      return "It's a draw!" 
    else 
      "Sorry, you lose... try again!" 
    end
  end
end