class Turn
  
  attr_reader :player_name, :player_choice, :opponent_choice
  
  def initialize(options)
    @player_name = options["player_name"]
    @player_choice = options["player_choice"]
    @opponent_choice = options["opponent_choice"]
  end
end