class Game

  attr_reader :player

  def self.create(game_klass, player)
    game_klass.new(player)
  end

  def initialize(player)
    @player = player
  end

end
