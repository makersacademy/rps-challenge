require_relative 'computer'
require_relative 'game'
require 'pg'
# require_relative 'database_connection'

class Round

  WEAPONS = [:rock, :paper, :scissors]
  attr_reader :player, :engine, :computer_weapon, :computer, :player_weapon, :game

# player name is global, so you can presumably access it here and submit it to the database. Make a
#table of players with a score set to 0. Keep a tally of their score too to give them a total.
#it should start a new session automatically each time a player enters their name... then you 
#can have a list of top-scorers, i.e. an option in the ORM that takes the table and orders it by highest
#score...

  def initialize(player_weapon, computer = Computer.new, game)
    @player_weapon = player_weapon.to_sym
    @computer = computer
    @computer_weapon = computer.weapon
    @game = game
    @connection = PG.connect("postgres://oilfaxhbqovhdj:f1a4c5e7a499b5476a202fd6d46bfa69c31d582bd5f6bd0a7154c35fea44f621@ec2-44-206-11-200.compute-1.amazonaws.com:5432/daovotsf76t904")
  end

  def engine
    if @player_weapon == @computer_weapon
      @connection.query("UPDATE scores SET drew = drew + 1;")
      @game.increment_drew
      "draw"
    elsif @player_weapon == :rock && @computer_weapon == :scissors
      @connection.query("UPDATE scores SET won = won + 1;")
      @game.increment_won
      "You chose wisely."
    elsif @player_weapon == :rock && @computer_weapon == :paper
      @connection.query("UPDATE scores SET lost = lost + 1;")
      @game.increment_lost
      "You did not choose wisely."
    elsif @player_weapon == :scissors && @computer_weapon == :paper
      @connection.query("UPDATE scores SET won = won + 1;")
      @game.increment_won
      "You chose wisely."
    elsif @player_weapon == :scissors && @computer_weapon == :rock
      @connection.query("UPDATE scores SET lost = lost + 1;")
      @game.increment_lost
      "You did not choose wisely."
    elsif @player_weapon == :paper && @computer_weapon == :rock
      @connection.query("UPDATE scores SET won = won + 1;")
      @game.increment_won
      "You chose wisely."
    elsif @player_weapon == :paper && @computer_weapon == :scissors
      @connection.query("UPDATE scores SET lost = lost + 1;")
      @game.increment_lost
      "You did not choose wisely."
    end
  end
end
