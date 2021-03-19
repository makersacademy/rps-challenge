require_relative './player'

class Game
  attr_reader :player
  def initialize(player)
    @player = player    
  end

  def self.instance
    @game
  end

  def self.new_game(name)
    player = Player.new(name)
    @game = Game.new(player)
  end
end