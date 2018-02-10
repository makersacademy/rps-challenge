class Game
  attr_reader :player, :bot

  def initialize(player, bot)
    @player = player
    @bot = bot
  end
end
