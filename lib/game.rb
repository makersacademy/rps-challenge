class Game 

  attr_reader :player_move, :cpu_move, :move_list

  def initialize
    @cpu_move = nil
    @player_move = nil
    @move_list = {
      'rock' => 'scissors',
      'scizzors' => 'paper',
      'paper' => 'rock'
    }
  end

  def cpu
    @cpu_move = ['rock', 'paper', 'scizzors'].sample
  end

  def player(move)
    @player_move = move
  end

  def outcome
    if @cpu_move == @player_move
      return 'draw'
    elsif @move_list.fetch(@cpu_move) == @player_move
      return 'lose'
    else 
      return 'win'
    end
  end

end