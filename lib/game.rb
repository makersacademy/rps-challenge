class Game
  RULES = {
    rock: { rock: :draw, paper: :lose, scissors: :win },
    paper: { rock: :win, paper: :draw, scissors: :lose },
    scissors: { rock: :lose, paper: :win, scissors: :draw },
  }

  attr_reader :name, :choice, :opp_choice

  def initialize(options)
    @name = options["name"]
    @choice = options["choice"]
    @opp_choice = options["opp_choice"]
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
    return if @opp_choice.nil?
    RULES[@choice][@opp_choice]
  end
end
