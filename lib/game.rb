class Game
  attr_reader :player

  def initialize(player, bot)
    @player = player
    @bot = bot
  end
end
