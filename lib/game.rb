
class Game
  RESULTS_HASH = {rock:{rock: :draw, paper: :lose, scissors: :win}, paper:{rock: :win, paper: :draw, scissors: :lose}, scissors:{rock: :lose, paper: :win, scissors: :draw}}

  attr_reader :result

  def initialize(player_one_choice, player_two_choice)
    @result = RESULTS_HASH[player_one_choice][player_two_choice]
  end

end
