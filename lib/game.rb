require_relative 'computer'
require_relative 'player'
require 'csv'

class Game

  attr_reader :players

  WEAPONS = [:rock, :paper, :scissors]
  RULES = { :scissors => :paper, :paper => :rock, :rock => :scissors }

  def initialize(player_1 = Player.new, player_2 = Computer.new)
    @players = [player_1, player_2]
  end

  def battle
    return :draw if @players[0].weapon == @players[1].weapon
    RULES[@players[0].weapon] == @players[1].weapon ? :won : :lose
  end

  def save_game
    CSV.open("gamelog.csv", "a+") do |csv|
      csv << [@players[0], @players[1], winner]
    end
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  private

  def winner
    battle == :draw ? :draw : battle == :won ? :player_1 : :player_2
  end

end
