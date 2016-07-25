class Game

GAME_RULES = {
  rock: {rock: :draw, paper: :lose, scissors: :win},
  paper: {rock: :win, paper: :draw, scissors: :lose},
  scissors: {rock: :lose, paper: :win, scissors: :draw}
}

attr_reader :human_player_name, :human_player_choice, :bot_choice, :result

  def initialize(args)
    @human_player_name = args["human_player_name"]
    @human_player_choice = args["human_player_choice"]
    @bot_choice = args["bot_choice"]
  end

  def human_wins?
    @result == :win
  end

  def human_loses?
    @result == :lose
  end

  def draw?
    @result == :draw
  end

  def result
    return if @bot_choice.nil?
    GAME_RULES[@human_player_choice][@bot_choice]
  end
end
