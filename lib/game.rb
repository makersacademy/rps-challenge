class Game

  def self.create_game(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  attr_reader :player

  def initialize(player)
    @player = player
  end

end
