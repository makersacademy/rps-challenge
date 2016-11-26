require_relative "game"

class Logic

  def initialize(player, computer)
    @game_array = [ player , computer ]

  end

  def player_wins?
    win = [
      [:rock, :scissors],
      [:paper, :rock],
      [:scissors, :paper]
    ]
    win.include?(@game_array)
  end

end
