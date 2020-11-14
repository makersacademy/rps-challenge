class Game
  def self.create(player)
    @game = Game.new(player)
  end

  attr_reader :player

  def initialize(player)
    @player = player
  end
end