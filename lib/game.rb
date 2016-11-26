class Game

  attr_reader :player

  def self.create(game_klass, player)
    @game = game_klass.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = player
  end

end
