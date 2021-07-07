class Result

  RESULTS = {
    rock: {rock: :draw, paper: :lose, scissors: :win},
    paper: {rock: :win, paper: :draw, scissors: :lose},
    scissors: {rock: :lose, paper: :win, scissors: :draw}
  }

  def initialize(opponent = Opponent.new)
    @opponent = opponent
  end

  def result(player_input)
    computer_input = @opponent.move
    @correct_line = RESULTS[player_input]
    @correct_line[@opponent.move]
  end

end
