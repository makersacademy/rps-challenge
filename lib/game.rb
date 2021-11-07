require_relative 'computer'
require_relative 'player'

class Game
  attr_reader :player_name, :computer

  def initialize(player_name, computer)
    @player_name = player_name
    @computer = computer
  end


end