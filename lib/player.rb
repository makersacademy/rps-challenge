
class Player

  attr_reader :player, :player_move

  def initialize(name)
    @player = name
  end

  def action
    @player_move = ["Rock", "Paper", "Scissors"].sample
  end

end
