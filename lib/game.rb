require_relative 'player'
require_relative 'computer'

class Game

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.current_game
    @game
  end

  def player_name
    @player.name
  end

end
