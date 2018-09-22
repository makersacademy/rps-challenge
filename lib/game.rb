class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def winner
    raise 'Players have not made a move' if no_move
  end

  # private #----------------------------

  def no_move
    !(@player_1.move && @player_2.move)
  end
end
