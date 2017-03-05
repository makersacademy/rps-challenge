require_relative './computer.rb'

class Game

  attr_accessor :player_selection, :computer_selection

  def initialize(player_selection, computer_selection)
    @player_selection = player_selection
    @computer_selection = computer_selection
  end

  def result
    return "DRAW!" if @computer_selection == @player_selection
    arr = [@player_selection, @computer_selection]
    if arr == [:rock, :scissors]
      "YOU WIN!"
    elsif arr == [:scissors, :paper]
      "YOU WIN!"
    elsif arr == [:paper, :rock]
      "YOU WIN!"
    else
      "YOU LOSE!"
    end
  end


end
