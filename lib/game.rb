class Game
  def initialize(player1_choice)
    @player1_choice = player1_choice
    @player2_choice = computer_choice
    @scenarios = {
      "ROCK" => {"ROCK" => 2, "PAPER" => 1, "SCISSORS" => 0, "LIZARD" => 0, "SPOCK" => 1},
      "PAPER" => {"ROCK" => 0, "PAPER" => 2, "SCISSORS" => 1, "LIZARD" => 1, "SPOCK" => 0},
      "SCISSORS" => {"ROCK" => 1, "PAPER" => 0, "SCISSORS" => 2, "LIZARD" => 0, "SPOCK" => 1},
      "LIZARD" => {"ROCK" => 1, "PAPER" => 0, "SCISSORS" => 1, "LIZARD" => 2, "SPOCK" => 0},
      "SPOCK" => {"ROCK" => 0, "PAPER" => 1, "SCISSORS" => 0, "LIZARD" => 1, "SPOCK" => 2}
    }
    @outcomes = ["Player 1 Wins!", "Player 2 Wins!", "It's a draw!"]
  end

  def player2_choice(player2_choice)
    @player2_choice = player2_choice
  end

  def summary
    [@player1_choice, @player2_choice, result]
  end

  private

  def result
    @outcomes[@scenarios[@player1_choice][@player2_choice]]
  end

  def computer_choice
    ["ROCK", "PAPER", "SCISSORS"].sample
  end
end