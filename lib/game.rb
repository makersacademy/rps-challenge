class Game

  attr_reader :player_1

  def initialize(player)
    @player_1 = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

end
