class Game

  attr_reader :player, :bot
  attr_accessor :choice

  def initialize(player, bot)
    @bot = bot
    @player = player
    @choice = nil
  end

  def self.save_instance(player, bot)
   @instance = Game.new(player, bot)
  end

  def self.instance
    @instance
  end

end
