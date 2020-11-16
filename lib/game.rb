class Game
  OPTIONS = ["Rock", "Paper", "Scissors"]
  BEATS = { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper" }

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def result(p1_choice, p2_choice)
    return :draw if p1_choice == p2_choice
    BEATS[p1_choice] == p2_choice ? :win : :lose
  end
end
