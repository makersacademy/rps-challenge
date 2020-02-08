class Game

  def self.create(player)
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
