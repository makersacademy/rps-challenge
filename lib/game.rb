class Game 

  def initialize
    @cpu_move = nil
    @player_move = nil
  end

  def cpu(move)
    @cpu_move = move
  end

  def player(move)
    @player_move = move
  end
end