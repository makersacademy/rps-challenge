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

  def outcome
    if @cpu_move == @player_move
      return 'Draw'
    elsif movelist.fetch(@cpu_move) == @player_move
      return 'CPU wins!'
    else 
      return 'Player wins!'
    end
  end
end