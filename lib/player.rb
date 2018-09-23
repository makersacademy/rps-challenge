
class Player

  attr_reader :name, :player_move

  def initialize(name)
    @name = name
  end

  def action(move)
    if ["Rock", "Paper", "Scissors"].include?(move)
      @player_move = move
    else
      @player_move = "Error"
    end
  end

end
