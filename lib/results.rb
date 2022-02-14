class Results

attr_reader :player_name, :player_move, :cpu_move

  def initialize(player_name, player_move, cpu_move)
    @player_name = player_name
    @player_move = player_move
    @cpu_move = cpu_move
    @calc_win = { Rock: :Scissors, Scissors: :Paper, Paper: :Rock }
  end

  def confirm_result
    if @calc_win[player_move] == cpu_move
      "Win"
    elsif @calc_win[cpu_move] == player_move
      "Lose"
    else
      "Drew"
    end
  end
  
end