require_relative './player.rb'
require_relative './ai.rb'

class Game

  attr_reader :player, :player2

  def initialize(player_class= Player, player2 = Ai)
    @player_class = player_class
    @player2 = player2.new
  end

  def create_player(name)
    @player = @player_class.new(name)
  end

end