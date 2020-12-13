require './lib/player'
require './lib/ai'

class RPS

  attr_accessor :player, :ai

  WEAPONS = [:rock, :paper, :scissors]
  WINNING_MOVES = { :rock => :scissors, :scissors => :paper, :paper => :rock }

  def initialize(player_name, ai = Ai.new)
    @player = Player.new(player_name)
    @ai = ai
  end

  def result
    if player.weapon == ai.weapon
      'Draw!'
    elsif WINNING_MOVES[player.weapon] == ai.weapon
      "#{player.name} won!"
    else
      "#{ai} won!"
    end
  end

end 
