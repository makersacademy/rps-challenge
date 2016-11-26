class Game


  attr_reader :player
  
  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = player
  end

end
