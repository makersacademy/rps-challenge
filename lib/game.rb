require './lib/player.rb'
require './lib/computer.rb'

class Game
  WEAPONS = [:rock, :paper, :scissors]

  attr_reader :player, :computer

  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def evaluate_winner
    return draw.to_s.capitalize if draw?
    player_results ? player.name : computer.name.to_s.capitalize
  end

  private
  def draw?
    player.choice == computer.choice
  end

  def draw
    :noone
  end

  def player_results
    result_combinations = {rock: {paper: false, scissors: true},
      paper: {scissors: false, rock: true},
      scissors: {rock: false, paper: true}
    }
    result_combinations[player.choice][computer.choice]
  end
end
