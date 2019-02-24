require_relative "rps_rules"

class Scorekeeper
  RULES = RPSRules::RULES

  def result(player_one, player_two)
    if beats(player_one.choice, player_two.choice)
      player_one
    elsif beats(player_two.choice, player_one.choice)
      player_two
    else
      "tie"
    end
  end

  private

  def beats(choice_one, choice_two)
    RULES[choice_one].include?(choice_two)
  end

end
