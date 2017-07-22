require 'singleton'

class Game

  include Singleton
  attr_reader :players

  def initialize
    @players = []
  end

  def add_player(player)
    @players += [player]
  end

end
