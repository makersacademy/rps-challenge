require './lib/player.rb'
require './lib/computer.rb'

class Game

  attr_reader :player, :computer


  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  # def player_name
  #   @player.name
  # end
  #
  # def player_choice
  #   @player.choice
  # end

  # def computer_choice
  #   @computer.choice
  # end

  def evaluate_winner
    return 'Draw' if computer.choice == player.choice
    return @player.name if player.choice == :rock && computer.choice == :scissors
    return @player.name if player.choice == :scissors && computer.choice == :paper
    return @player.name if player.choice == :paper && computer.choice == :rock
    return 'Computer' if computer.choice == :rock && player.choice == :scissors
    return 'Computer' if computer.choice == :scissors && player.choice == :paper
    return 'Computer' if computer.choice == :paper && player.choice == :rock
  end
end
