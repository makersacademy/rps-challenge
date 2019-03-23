class Score
  attr_reader :computer_score, :result

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
      @result = "Computer wins!"
    elsif options == ["Paper", "Rock"] || options == ["Scissors", "Paper"] || options == ["Rock", "Scissors"]
      @result = "Congratulations, you win #{@player_name}!"
    else
      @result = "A draw!"
    end
    return @result
  end
end