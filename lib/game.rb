require_relative 'player'

class Game

  attr_reader :player

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def name
    @player.name
  end

  def attack
    @player.attack
  end

end
