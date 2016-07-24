require_relative 'player'

class Game
  attr_reader :rules

def initialize(player)
  @player = player
  @rules = {  rock: :scissors,
              scissors: :paper,
              paper: :rock  }

end


end
