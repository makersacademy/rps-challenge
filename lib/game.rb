require_relative "player"
require_relative "computer"

class Game

  attr_reader :player

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = Player.new(player)
    @computer = Computer.new
  end



end
