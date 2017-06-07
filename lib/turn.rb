class Turn

  attr_reader :player_name, :player_shape, :opponent_shape

  def initialize(options)
    @player_name = options["player_name"]
    @player_shape = options["player_shape"]
    @opponent_shape = options["opponent_shape"]
  end

end
