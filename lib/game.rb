require_relative 'player'

class Game
  attr_reader :player
  
  def initialize(player)
    @player = player
  end

  def generate_move
    ['Rock', 'Paper', 'Scissors'].sample
  end
end
