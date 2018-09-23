require "player"

class Game
  
  attr_reader :player, :computer

  def self.create(player, computer)
    @@game = Game.new(player, computer)
  end

  def self.instance
    @@game
  end

  def initialize(player = Player.new, computer = Player.new)
    @player = player
    @computer = computer
  end

end