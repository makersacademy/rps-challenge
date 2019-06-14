require_relative './player.rb'

class Game

  attr_reader :player

  def initialize(player_class= Player)
    @player_class = player_class
  end

  def create_player(name)
    @player = @player_class.new(name)
  end

end