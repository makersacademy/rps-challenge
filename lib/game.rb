require_relative './player.rb'

class Game
  attr_reader :player

  def initialize(player = Player.new)
    @player = player
  end
end