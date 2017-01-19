class Game

  RESULT = {
    rock: {rock: :draw, paper: :lose, scissors: :win},
    paper: {rock: :win, paper: :draw, scissors: :lose},
    scissors: {rock: :lose, paper: :win, scissors: :draw}
  }

  attr_reader :player_name, :player_choice, :computer_choice

  def initialize(choices)
    @player_name = choices["player_name"]
    @player_choice = choices["player_choice"]
    @computer_choice = choices["computer_choice"]
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
    return if @computer_choice.nil?
    RESULT[@player_choice][@computer_choice]
  end
end
