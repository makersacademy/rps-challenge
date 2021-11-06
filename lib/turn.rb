class Turn

   GAME_RULES = {
       Rock: {Rock: :draw, Paper: :lose, Scissors: :win},
       Paper: {Rock: :win, Paper: :draw, Scissors: :lose},
       Scissors: {Rock: :lose, Paper: :win, Scissors: :draw}
   }

   attr_reader :player_name, :player_shape, :opponent_shape 
    
  def initialize(options)
    @player_name = options["player_name"]
    @player_shape = options["player_shape"]
    @opponent_shape = options["opponent_shape"]
  end

  def win?
    result == :win
  end

  def lose? 
    result == :lose
  end
  
  def draw?
    result == :draw
  end

  private

  def result
    return if @opponent_shape.nil?
    GAME_RULES[@player_shape][@opponent_shape]
  end


end