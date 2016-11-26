require_relative 'player'

class Game
  attr_reader :player_choice, :player

  def initialize(player)
    @player = player
    @player_choice = nil
  end

  def rock
    @player_choice = player.rock
  end

  def paper
    @player_choice = player.paper
  end

  def scissors
    @player_choice = player.scissors
  end
end
