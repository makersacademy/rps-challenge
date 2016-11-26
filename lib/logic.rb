require_relative "game"

class Logic

  def initialize(player, computer)
    @game_array = [ player , computer ]

  end

  def player_wins?
    win = [
      ["Rock", "Scissors"],
      ["Paper", "Rock"],
      ["Scissors", "Paper"]
    ]
    win.include?(@game_array)
  end

end
