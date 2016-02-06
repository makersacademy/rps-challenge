require './lib/player.rb'
require './lib/computer.rb'

class Game

  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def evaluate_winner
    return "Noone" if draw?
    player_results ? player.name : "Computer"
  end

  private
  def draw?
    player.choice == computer.choice
  end

  def player_results
    result_combinations = {rock: {paper: false, scissors: true},
      paper: {scissors: false, rock: true},
      scissors: {rock: false, paper: true}
    }
    result_combinations[player.choice][computer.choice]
  end
end
