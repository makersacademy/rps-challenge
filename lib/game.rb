require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player, :computer, :computer_move

  def initialize(player)
    @player = player
    computer = Computer.new
    @computer_move = computer.computer_move
  end

  def result(player_choice, computer_choice)
    if player_choice == computer_choice
      :draw
    elsif player_choice == :rock
      if computer_choice == :scissors
        :win
      elsif computer_choice == :paper
        :lose
      end
    elsif player_choice == :paper
      if computer_choice == :rock
        :win
      elsif computer_choice == :scissors
        :lose
      end
    elsif player_choice == :scissors
      if computer_choice == :paper
        :win
      elsif computer_choice == :rock
        :lose
      end
    end  
  end
end
