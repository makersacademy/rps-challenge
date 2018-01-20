require_relative 'player'

class Game

  def self.build(player)
    @game = self.new(player)
  end

  def self.instance
    @game
  end
  
  attr_reader :player

  def initialize(player)
    @player = player
  end

end
