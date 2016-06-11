require_relative 'player'
require_relative 'computer'

class Game
  attr_reader :player_input, :computer_input

  def initialize(player_input)
    @player_input = player_input
    @computer_input = Computer.new.computer_input
  end

  def rps_logic
    if player_input == :rock && computer_input == :scissors
      @result = '0'
    elsif player_input == :scissors && computer_input == :paper
      @result = '0'
    elsif player_input == :paper && computer_input == :rock
      @result = '0'
    elsif computer_input == :rock && player_input == :scissors
      @result = '1'
    elsif computer_input == :scissors && player_input == :paper
      @result = '1'
    elsif computer_input == :paper && player_input == :rock
      @result = '1'
    elsif player_input == :rock && computer_input == :rock ||
      player_input == :paper && computer_input == :paper ||
      player_input == :scissors && computer_input == :scissors
      @result = '2'
    end
  end

  def game_result
    rps_logic
    if (@result == '0')
      "You Win!"
    elsif (@result == '1')
      "You Lose!"
    else
      "Tie"
    end
  end

end
