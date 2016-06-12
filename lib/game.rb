require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player, :computer
  WEPONS = ['Rock', 'Paper', 'Scissors']

  def initialize( player, computer)
    @player = player
    @computer = computer
  end

  def player_weapon
    
  end

end
