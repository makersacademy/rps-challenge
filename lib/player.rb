
class Player

  attr_reader :player, :player_move

  def initialize(name)
    @player = name
  end

  def action(move)
    @player_move = move
  end

end
