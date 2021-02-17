class Game
  attr_reader :player_1, :player_2

  OPTIONS = ["Rock", "Paper", "Scissors"]
  BEATS = { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper" }

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def result(p1_choice, p2_choice)
    return :draw if p1_choice == p2_choice

    BEATS[p1_choice] == p2_choice ? :win : :lose
  end
end
