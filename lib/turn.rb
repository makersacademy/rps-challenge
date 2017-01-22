class Turn
  BASIC_RULES = {
    rock: {rock: :draw, paper: :lose, scissors: :win},
    paper: {rock: :win, paper: :draw, scissors: :lose},
    scissors: {rock: :lose, paper: :win, scissors: :draw}
  }

  attr_reader :player_name, :player_utensil, :bot_utensil

  def initialize(options)
    @player_name = options["player_name"]
    @player_utensil = options["player_utensil"]
    @bot_utensil = options["bot_utensil"]
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
    return if @bot_utensil.nil? # this line is needed because in result in the display (play.erb) will not be visible to start with and will fail the tests
    BASIC_RULES[@player_utensil][@bot_utensil]
  end

end
