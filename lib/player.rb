
class Player

  attr_reader :name, :player_move

  def initialize(name)
    @name = name
  end

  def action(move)
    @player_move = move
  end

end
