class Turn
  WIN_CONDITIONS = {
    rock: {rock: :draw, paper: :lose, scissors: :win},
    paper: {rock: :win, paper: :draw, scissors: :lose},
    scissors: {rock: :lose, paper: :win, scissors: :draw}
  }

  attr_reader :player_name, :player_choice, :cpu_choice

  def initialize(options)
    @player_name = options["player_name"]
    @player_choice = options["player_choice"]
    @cpu_choice = options["cpu_choice"]
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
    return if @cpu_choice.nil?
    WIN_CONDITIONS[@player_choice][@cpu_choice]
  end
end