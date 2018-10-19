class Game

  attr_reader :player

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def player_wins

  end

  def player_looses

  end

end
