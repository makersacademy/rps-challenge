class Results

attr_reader :player_name, :player_move, :cpu_move

  def initialize(player_name, player_move, cpu_move)
    @player_name = player_name
    @player_move = player_move
    @cpu_move = cpu_move
  end
  
end