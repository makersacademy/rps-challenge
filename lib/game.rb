class Game
  attr_reader :players, :rps
  attr_accessor :player_one_answer, :player_two_answer, :result

  def initialize(player_one)
    @players = [player_one]
    @player_one_answer = nil
    @player_two_answer = nil
    @rps = ["Rock", "Paper", "Scissors", "Lizard", "Spock"]
    @result = nil
  end

  def player_one
    @players.first
  end

  def results
    @player_two_answer = @rps.sample
    calc
  end

  def set_values
    p1 = @player_one_answer
    p2 = @player_two_answer
  end

  def player_one_wins
    @result = "Player 1 wins"
  end

  def player_two_wins
    @result = "Player 2 wins"
  end

  def draw
    @result = "It's a draw"
  end

  def calc
    # set_values
    p1 = @player_one_answer
    p2 = @player_two_answer
    case
    when p1 == p2
      draw
    when p1 == "Scissors" && p2 == "Paper" || p2 == "Lizard"
      player_one_wins
    when p1 == "Rock" && p2 == "Scissors" || p2 == "Lizard"
      player_one_wins
    when p1 == "Paper" && p2 == "Rock" || p2 == "Spock"
      player_one_wins
    when p1 == "Lizard" && p2 == "Paper" || p2 == "Spock"
      player_one_wins
    when p1 == "Spock" && p2 == "Scissors" || p2 == "Rock"
      player_one_wins
    when p1 == "Spock" && p2 == "Lizard"
      player_two_wins
    else
      player_two_wins
    end
  end

end
