require_relative 'player'

class Game

  attr_reader :player

  def initialize(player)
    @player = player
  end

  def name
    @player.name
  end

  def attack
    @player.attack
  end
end
