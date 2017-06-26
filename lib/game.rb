
class Game

  RULES = {rock: { rock: :draw, paper: :lose, scissors: :win  },
    paper: { rock: :win, paper: :draw, scissors: :lose },
    scissors: { rock: :lose, paper: :win, scissors: :draw}
   }

  attr_reader :player_name, :player_choice, :opponent_choice

  def initialize(args)
    @player_name = args["player_name"]
    @player_choice = args["player_choice"]
    @opponent_choice = args["opponent_choice"]
  end

  def win?
    outcome == :win
  end

  def lose?
    outcome == :lose
  end

  def draw?
    outcome == :draw
  end

  def outcome
    return if @opponent_choice.nil?
    RULES[@player_choice][@opponent_choice]
  end
end
