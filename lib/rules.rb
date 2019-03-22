class Rules
  attr_reader :list
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
end
