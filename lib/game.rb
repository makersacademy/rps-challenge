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
      "You chose wisely."
    elsif @player_weapon == :rock && @computer_weapon == :paper
      "You did not choose wisely."
    elsif @player_weapon == :scissors && @computer_weapon == :paper
      "You chose wisely."
    elsif @player_weapon == :scissors && @computer_weapon == :rock
      "You did not choose wisely."
    elsif @player_weapon == :paper && @computer_weapon == :rock
      "You chose wisely."
    elsif @player_weapon == :paper && @computer_weapon == :scissors
      "You did not choose wisely."
    end
  end
end
