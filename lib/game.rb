class Game

  attr_reader :player

  def initialize(player)
    @player = player
  end

  def self.save_instance(player)
   @instance = Game.new(player)
  end

  def self.instance
    @instance
  end

end
