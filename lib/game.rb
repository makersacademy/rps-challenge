class Game
  RULES = {
    Rock: %i[Scissors Lizard],
    Paper: %i[Rock Spock],
    Scissors: %i[Paper Lizard],
    Lizard: %i[Paper Spock],
    Spock: %i[Scissors Rock]
  }
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def check_result(player_choice, computer_choice)
    return :win if RULES[player_choice.to_sym].include?(computer_choice)
    return :loss if RULES[computer_choice].include?(player_choice.to_sym)
    return :draw
  end
end
