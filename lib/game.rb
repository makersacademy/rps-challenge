
class Game

  GAME_RESULTS = {
    rock: {rock: :draw, paper: :lose, scissors: :win},
    paper: {rock: :win, paper: :draw, scissors: :lose},
    scissors: {rock: :lose, paper: :win, scissors: :draw}
  }

  attr_reader :name, :shape, :computer_shape

  def initialize(options)
    @name = options["name"]
    @shape = options["shape"]
    @computer_shape = options["computer_shape"]
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

  def result
    return if @computer_shape.nil?
    GAME_RESULTS[@shape][@computer_shape]
  end
end