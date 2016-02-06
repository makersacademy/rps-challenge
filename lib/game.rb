require './lib/player.rb'
require './lib/computer.rb'

class Game

  attr_reader :player, :computer


  def initialize(player, computer)
    @player = player
    @computer = computer
  end


  def evaluate_winner

    result_combinations = {rock: {paper: false, scissors: true},
      paper: {scissors: false, rock: true},
      scissors: {rock: false, paper: true}
    }
    return "Noone" if player.choice == computer.choice
    player_results  = result_combinations[player.choice][computer.choice]
    return player.name if player_results == true
    return "Computer" if player_results == false

  end

end
