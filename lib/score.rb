class Score
  attr_reader :computer_score

  def initialize(player_score, player_name)
    @player_score = player_score
    @player_name = player_name
  end

  def play_computer
    ["Rock", "Paper", "Scissors"].sample
  end

  def result
    @computer_score = play_computer
    options = [@player_score, @computer_score]

    if options == ["Rock", "Paper"] || options == ["Paper", "Scissors"] || options == ["Scissors", "Rock"]
      "Computer wins!"
    elsif options == ["Paper", "Rock"] || options == ["Scissors", "Paper"] || options == ["Rock", "Scissors"]
      "Congratulations, you win #{@player_name}!"
    else
      "A draw!"
    end
  end
end