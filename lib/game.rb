class Game
  attr_reader :player, :cp_moves

  def initialize(player)
    @player = player
    @cp_moves = []
  end

  def cp_move
    cp_moves << ['Rock', 'Paper', 'Scissors'].sample
  end

end
