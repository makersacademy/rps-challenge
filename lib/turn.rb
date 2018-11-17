class Turn

  attr_reader :player_1_name, :player_1_move, :opponent_move

  def initialize(options)
    @player_1_name = options["player_1_name"]
    @player_1_move = options["player_1_move"]
    @opponent_move = options["opponent_move"]
  end

end
