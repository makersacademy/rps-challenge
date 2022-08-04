require_relative 'computer'
require 'pg'

class Game

  WEAPONS = [:rock, :paper, :scissors]
  attr_reader :player, :engine, :computer_weapon, :computer, :player_weapon

  def initialize(player_weapon, computer = Computer.new)
    @player_weapon = player_weapon.to_sym
    @computer = computer
    @computer_weapon = computer.weapon
    # @won = 0
    # @drew = 0
    # @lost = 0
  end

  def engine
    if @player_weapon == @computer_weapon
      # @drew += 1
      DatabaseConnection.query("INSERT INTO scores (drew) VALUES(true)")
      # result = DatabaseConnection.query("INSERT INTO users (username) VALUES($1) RETURNING id, username ;", [username])
      # User.new(id: result[0]['id'], username: result[0]['username'])
      "draw"
    elsif @player_weapon == :rock && @computer_weapon == :scissors
      DatabaseConnection.query("INSERT INTO scores (won) VALUES(true)")
      "You chose wisely."
    elsif @player_weapon == :rock && @computer_weapon == :paper
      DatabaseConnection.query("INSERT INTO scores (lost) VALUES(true)")
      "You did not choose wisely."
    elsif @player_weapon == :scissors && @computer_weapon == :paper
      DatabaseConnection.query("INSERT INTO scores (won) VALUES(true)")
      "You chose wisely."
    elsif @player_weapon == :scissors && @computer_weapon == :rock
      DatabaseConnection.query("INSERT INTO scores (lost) VALUES(true)")
      "You did not choose wisely."
    elsif @player_weapon == :paper && @computer_weapon == :rock
      DatabaseConnection.query("INSERT INTO scores (won) VALUES(true)")
      "You chose wisely."
    elsif @player_weapon == :paper && @computer_weapon == :scissors
      DatabaseConnection.query("INSERT INTO scores (lost) VALUES(true)")
      "You did not choose wisely."
    end
  end
end
