
class Game

  attr_reader :player, :bot_choice

  def initialize(player = "")
    @player = player
    @bot_choice = nil
  end

end