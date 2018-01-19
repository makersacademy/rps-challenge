class Game

  def self.create(player)
    @game_state = Game.new(player)
  end

  def self.instance
    @game_state
  end

  attr_reader :player

  def initialize(player)
    @player = player
  end

end