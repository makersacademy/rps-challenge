require_relative 'player'

class Game

  attr_reader :player, :current_player

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def initialize(player, computer)
    @player = Player.new(player)
    @compter = Computer.new(computer)
    @current_player = @player
  end
end
