require_relative 'player'

class Game

  attr_reader :player1, :current_player

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = Player.new(player)
    @current_player = @player
  end
end
