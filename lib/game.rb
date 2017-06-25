require "./lib/player.rb"

class Game

  GAME_RULES = {
               rock: { :rock => :tie, :paper => :lose, :scissors => :win },
               paper: { :rock => :win, :paper => :tie, :scissors => :lose },
               scissors: { :rock => :lose, :paper => :win, :scissors => :tie }
              }

  attr_reader :player, :opponent_choice

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = player
  end

  def choose
    @opponent_choice = [:rock, :paper, :scissors].sample
  end

  def win?
    result == :win
  end

  def tie?
    result == :tie
  end

  private

  def result
    GAME_RULES[player.choice][@opponent_choice]
  end

end
