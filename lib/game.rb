require_relative 'computer'
require_relative 'player'

class Game

  attr_reader :player_1, :player_2

  WEAPONS = [:rock, :paper, :scissors]
  RULES = { :scissors => :paper, :paper => :rock, :rock => :scissors }

  def initialize(player_1,player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

end
