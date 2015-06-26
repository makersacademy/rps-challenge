require_relative 'player'

class Game
  attr_accessor :player_1, :player_2

  def initialize
    @player_1 = Player.new
    @player_2 = Player.new
    
  end
end
