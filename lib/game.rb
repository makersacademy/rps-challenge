class Game
  attr_reader :player
  
  def initialize(player)
    @player = player
  end

  private

  def self.create(player)
    @game = Game.new(player)
  end
  
  def self.instance
    @game
  end
end