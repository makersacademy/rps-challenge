class RpsRules
  attr_reader :list
  WEAPONS = [:Rock, :Paper, :Scissors]
  RULES = { Rock: :Scissors, Scissors: :Paper, Paper: :Rock }

  def check_rules(choice_1, choice_2)
    return "draw" if choice_1 == choice_2

    # if player_1 choice beats the computer choice
    RULES[choice_1] == choice_2 ? "win" : "lose"
  end
end
