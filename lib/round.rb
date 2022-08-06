require_relative 'computer'
require_relative 'game'
# require 'pg'

class Round

  WEAPONS = [:rock, :paper, :scissors]
  attr_reader :player, :engine, :computer_weapon, :computer, :player_weapon, :game

#branch off and put test improvement there, then revert this back
  #remember to add game back into intialize, uncomment out the stuff below, and who 
#even knows what to do with the spec

  def initialize(player_weapon, computer = Computer.new)
    @player_weapon = player_weapon.to_sym
    @computer = computer
    @computer_weapon = computer.weapon
    # @game = game
  end

  def engine
    if @player_weapon == @computer_weapon
      DatabaseConnection.query("UPDATE scores SET drew = drew + 1;")
      # @game.increment_drew
      "draw"
    elsif @player_weapon == :rock && @computer_weapon == :scissors
      DatabaseConnection.query("UPDATE scores SET won = won + 1;")
      # @game.increment_won
      "You chose wisely."
    elsif @player_weapon == :rock && @computer_weapon == :paper
      DatabaseConnection.query("UPDATE scores SET lost = lost + 1;")
      # @game.increment_lost
      "You did not choose wisely."
    elsif @player_weapon == :scissors && @computer_weapon == :paper
      DatabaseConnection.query("UPDATE scores SET won = won + 1;")
      @game.increment_won
      "You chose wisely."
    elsif @player_weapon == :scissors && @computer_weapon == :rock
      DatabaseConnection.query("UPDATE scores SET lost = lost + 1;")
      # @game.increment_lost
      "You did not choose wisely."
    elsif @player_weapon == :paper && @computer_weapon == :rock
      DatabaseConnection.query("UPDATE scores SET won = won + 1;")
      # @game.increment_won
      "You chose wisely"
    elsif @player_weapon == :paper && @computer_weapon == :scissors
      DatabaseConnection.query("UPDATE scores SET lost = lost + 1;")
      # @game.increment_lost
      "You did not choose wisely"
    end
  end
end
