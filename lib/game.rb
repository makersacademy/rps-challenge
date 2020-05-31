class Game

  attr_reader :player1_name, :option, :computer_option

  RULES = {
    rock: { paper: :lose, rock: :draw, scissors: :win },
    paper: { scissors: :lose, paper: :draw, rock: :win },
    scissors: { rock: :lose, scissors: :draw, paper: :win }
  }

  def initialize(options)
    @player1_name = options["player1_name"]
    @option = options["option"]
    @computer_option = options["computer_option"]
  end

  def winner?
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
    return if @computer_option.nil?

    RULES[@option][@computer_option]
  end
end
