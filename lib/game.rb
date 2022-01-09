class Game
  def initialize
    @computer_choice = computer_choice
    @scenarios = {
      "ROCK" => {"ROCK" => 2, "PAPER" => 1, "SCISSORS" => 0},
      "PAPER" => {"ROCK" => 0, "PAPER" => 2, "SCISSORS" => 1},
      "SCISSORS" => {"ROCK" => 1, "PAPER" => 0, "SCISSORS" => 2}
    }
    @outcomes = ["You Win!", "GameBot wins!", "It's a draw"]
  end

  def player1_choice(player1_choice)
    @player1_choice = player1_choice
  end

  def summary
    [@player1_choice, @computer_choice, result]
  end

  private

  def result
    @outcomes[@scenarios[@player1_choice][@computer_choice]]
  end


  def computer_choice
    ["ROCK", "PAPER", "SCISSORS"].sample
  end
end