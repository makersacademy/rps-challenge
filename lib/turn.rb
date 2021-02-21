class Turn

GAME_RULES = {
  rock:  {rock: :draw, paper: :lose, scissors: :win},
  paper: {rock: :win, paper: :draw, scissors: :lose},
  scissors: {rock: :lose, paper: :win, scissors: :draw}
}

attr_reader :player_name, :player_move, :opponent_move

  def initialize(options)
    @player_name = options[:player_name]
    @player_move = options[:player_move]
    @opponent_move = options[:opponent_move]
  end

  def win?
    result == :win
  end

  private

  def result
    return if @opponent_move.nil?
    GAME_RULES[@player_move][@opponent_move]
  end

end
