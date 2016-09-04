require_relative 'player'

class Game

  attr_reader :player

  def initialize(player)
    @player = player
    @rules = {rock: :scissors,
             paper: :rock,
             scissors: :paper}

  end

end
