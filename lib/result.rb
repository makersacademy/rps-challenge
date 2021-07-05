class Result

  attr_reader :player_choice, :opponent_choice

  GAME_RULES = {
    rock: { rock: :draw, paper: :lose, scissors: :win },
    paper: { rock: :win, paper: :draw, scissors: :lose },
    scissors: { rock: :lose, paper: :win, scissors: :draw }
  }

  def initialize(player_choice, opponent_choice)
    @player_choice = player_choice.downcase.to_sym
    @opponent_choice = opponent_choice.downcase.to_sym
  end

  def win?
    check_result == :win
  end

  def lose?
    check_result == :lose
  end

  def draw?
    check_result == :draw
  end

  def check_result
    GAME_RULES[@player_choice][@opponent_choice]
  end
end
