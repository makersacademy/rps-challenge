

class Player

  attr_reader :player_move, :score, :name

  def initialize(name)
    @name = name
  end

  def play(move)
    @player_move = move
  end



end
