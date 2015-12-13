require_relative 'player'
require_relative 'computer'

class Game
  WEAPONS = [:rock, :paper, :scissors]

  attr_reader :player_1, :player_2

  def initialize(player_1 = Player.new(name), player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

end
