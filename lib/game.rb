require_relative 'computer'
require_relative 'player'
require_relative 'result_calculator'

class Game

  WEAPONS = [:rock, :paper, :scissors]

  attr_reader :weapons, :computer, :player

  def initialize(player, computer)
    @player = player
    @computer = computer
  #  @result_calculator = ResultCalculator.new
  end

  # def final_result(player_move, computer_move)
  #   @result_calculator(player_move, computer_move).who_won
  # end


end
