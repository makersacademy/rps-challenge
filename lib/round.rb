require_relative 'computer'
require 'pg'

class Round

  WEAPONS = [:rock, :paper, :scissors]
  attr_reader :player, :engine, :computer_weapon, :computer, :player_weapon

  def initialize(player_weapon, computer = Computer.new)
    @player_weapon = player_weapon.to_sym
    @computer = computer
    @computer_weapon = computer.weapon
  end

  def engine
    if @player_weapon == @computer_weapon
      DatabaseConnection.query("UPDATE scores SET drew = drew + 1;")
      "draw"
    elsif @player_weapon == :rock && @computer_weapon == :scissors
      DatabaseConnection.query("UPDATE scores SET won = won + 1;")
      "You chose wisely."
    elsif @player_weapon == :rock && @computer_weapon == :paper
      DatabaseConnection.query("UPDATE scores SET lost = lost + 1;")
      "You did not choose wisely."
    elsif @player_weapon == :scissors && @computer_weapon == :paper
      DatabaseConnection.query("UPDATE scores SET = won + 1;")
      "You chose wisely."
    elsif @player_weapon == :scissors && @computer_weapon == :rock
      DatabaseConnection.query("UPDATE scores SET lost = lost + 1;")
      "You did not choose wisely."
    elsif @player_weapon == :paper && @computer_weapon == :rock
      DatabaseConnection.query("UPDATE scores SET won = won + 1;")
      "You chose wisely."
    elsif @player_weapon == :paper && @computer_weapon == :scissors
      DatabaseConnection.query("UPDATE scores SET lost = lost + 1;")
      "You did not choose wisely."
    end
  end
end
