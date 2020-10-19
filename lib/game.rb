require './app'

class Game

  GAME_RULES = {
    rock: {rock: :draw, paper: :lose, scissors: :win },
    paper: {rock: :win, paper: :draw, scissors: :lose},
    scissors: {rock: :lose, paper: :win, scissors: :draw}
  }

  def win?
    result == :win
  end

  def lose?
    result == :lose
  end

  def draw?
    result == :draw
  end

  def result
    GAME_RULES[@weapon][@opponent_weapon]
  end


end