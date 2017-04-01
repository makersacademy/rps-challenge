class Game
  attr_reader :player, :comp

  def initialize(player, comp)
    @player = player
    @comp = comp
  end

  def calculate_winner
    if player.choice == comp.choice
      "Draw"
    elsif player.choice == "orange-throat" && comp.choice == "blue-throat" || player.choice == "blue-throat" && comp.choice == "yellow-throat" || player.choice == "yellow-throat" && comp.choice == "orange-throat"
      player
    else
      comp
    end
  end
end
