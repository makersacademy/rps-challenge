class RpsRules
  attr_reader :list
  WEAPONS = ["Rock", "Paper", "Scissors"]

  def initialize
    @list = [{ result: "@player_1", player_1: "Scissors", player_2: "Paper" },
            { result: "@player_2", player_1: "Scissors", player_2: "Rock" },
            { result: "draw", player_1: "Scissors", player_2: "Scissors" },
            { result: "@player_1", player_1: "Paper", player_2: "Rock" },
            { result: "@player_2", player_1: "Paper", player_2: "Scissors" },
            { result: "draw", player_1: "Paper", player_2: "Paper" },
            { result: "@player_1", player_1: "Rock", player_2: "Scissors" },
            { result: "@player_2", player_1: "Rock", player_2: "Paper" },
            { result: "draw", player_1: "Rock", player_2: "Rock" }]
  end

  def check_rules(choice_1, choice_2)
    @list.each do |outcome|
      if rule_matched?(outcome, choice_1, choice_2)
        return outcome[:result]
      end
    end
  end

  private

  def rule_matched?(outcome, choice_1, choice_2)
    outcome[:player_1] == choice_1 && outcome[:player_2] == choice_2
  end
end
