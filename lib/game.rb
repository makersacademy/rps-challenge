require_relative 'computer'
require_relative 'player'

class Game

  attr_reader :players

  WEAPONS = [:rock, :paper, :scissors]
  RULES = { :scissors => :paper, :paper => :rock, :rock => :scissors }

  def initialize(player_1 = Player.new, player_2 = Computer.new)
    @players = [player_1, player_2]
  end

  def battle
    return :draw if @players[0].weapon == @players[1].weapon
    RULES[@players[0].weapon]  == @players[1].weapon ? :won : :lose
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

end
