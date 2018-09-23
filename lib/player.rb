
class Player

  attr_reader :name, :player_move

  def initialize(name)
    @name = name
  end

  def action(move)
    if move != ("Rock" || "Paper" || "Scissors")
      @player_move = "Error"
    else
      @player_move = move
    end
  end

end
