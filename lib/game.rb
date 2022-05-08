require_relative 'computer'

class Game

  WEAPONS = [:rock, :paper, :scissors]
  attr_reader :player, :engine, :computer_weapon, :computer, :player_weapon

  def initialize(player_weapon, computer = Computer.new)
    @player_weapon = player_weapon.to_sym
    @computer = computer
    @computer_weapon = computer.weapon
  end

  def engine
    if @player_weapon == @computer_weapon
      "draw"
    elsif @player_weapon == :rock && @computer_weapon == :scissors
      "You win."
    elsif @player_weapon == :rock && @computer_weapon == :paper
      "Computer wins."
    elsif @player_weapon == :scissors && @computer_weapon == :paper
      "You win."
    elsif @player_weapon == :scissors && @computer_weapon == :rock
      "Computer wins."
    elsif @player_weapon == :paper && @computer_weapon == :rock
      "You win."
    elsif @player_weapon == :paper && @computer_weapon == :scissors
      "Computer wins."
    end
  end

  #replace the strings with a method, either winning_message or losing_message
  #each will run sample on an array of three messages
  #or use the phrases to suggest another go

end
