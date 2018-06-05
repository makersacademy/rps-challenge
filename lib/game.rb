require './app'

class Game

  GAME_RULES = {
    rock: { rock: :draw, paper: :lose, scissors: :win },
    paper: { rock: :win, paper: :draw, scissors: :lose },
    scissors: { rock: :lose, paper: :win, scissors: :draw }
  }

  attr_reader :player_name, :player_option, :computer_option

  def initialize(options)
    @player_name = options["player_name"]
    @player_option = options["player_option"]
    @computer_option = options["computer_option"]
  end

  def win?
    result == :win
  end

  def result
    return if @computer_option.nil?
    GAME_RULES[@player_option][@computer_option]
  end
end
