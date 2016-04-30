class Game

  attr_reader :player_one

  def initialize player
    @player_one = player
  end

  def self.create player
    @game = Game.new player
  end

  def self.object
    @game
  end
end
