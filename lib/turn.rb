class Turn
  attr_reader :player_name, :player_move, :opponent_move
  
  def initialize(options)
    @player_name = options["player_name"]
    @player_move = options["player_move"]
    @opponent_move = options["opponent_move"]
  end
end