require 'player'

class Game

  attr_reader :player

  def initialize(name, player_class = Player)
    @player = player_class.new(name)
  end


end
