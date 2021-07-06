class Turn

  GAME_RULES = {
    Rock: { Rock: :draw, Paper: :lose, Scissors: :win },
    Paper: { Rock: :win, Paper: :draw, Scissors: :lose },
    Scissors: { Rock: :lose, Paper: :win, Scissors: :draw }
  }

  attr_reader :player_1_name, :player_1_move, :opponent_move

  def initialize(options)
    @player_1_name = options["player_1_name"]
    @player_1_move = options["player_1_move"]
    @opponent_move = options["opponent_move"]
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
    return if @opponent_move.nil?
    GAME_RULES[@player_1_move][@opponent_move]
  end

end
