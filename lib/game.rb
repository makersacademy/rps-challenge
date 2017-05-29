
class Game

  attr_reader :player_1_name, :player_1_choice, :player_2_choice

  DEFAULT_FINISH_SCORE = 20
  SHAPES = [:rock, :paper, :scissors]
  WIN_RULES = { rock: :scissors,
              paper: :rock,
              scissors: :paper }

  def initialize(choices)
    @player_1_name = choices["player_1_name"]
    @player_1_choice = choices["player_1_choice"]
    @player_2_choice = choices["player_2_choice"]
  end

  def win?
    result == :win
  end

  def draw?
    result == :draw
  end

  def lose?
    result == :lose
  end

  def game_over?
  end

  def save_game
  end

private

  def result
    return :draw if @player_1_choice == @player_2_choice
    WIN_RULES[@player_1_choice] == @player_2_choice ? :win : :lose
  end

end
