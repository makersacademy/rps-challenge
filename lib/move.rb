class Move
  attr_reader :name, :choice, :computer_choice

  def initialize(choices)
    @name = choices["name"]
    @choice = choices["choice"]
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
    rules = {
      rock: {rock: :draw, paper: :lose, scissors: :win},
      paper: {rock: :win, paper: :draw, scissors: :lose},
      scissors: {rock: :lose, paper: :win, scissors: :draw}
    }
    return if @computer_choice.nil?
    rules[@choice][@computer_choice]
  end
end
