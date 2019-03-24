class Score
  attr_reader :computer_score

  def initialize(player_score, player_name)
    @player_score = player_score
    @player_name = player_name
    @win = [["Rock", "Scissors"], ["Scissors", "Paper"], ["Paper", "Rock"]]
    @lose = [["Scissors", "Rock"], ["Paper", "Scissors"], ["Rock", "Paper"]]
  end

  def play_computer
    ["Rock", "Paper", "Scissors"].sample
  end

  def result
    @computer_score = play_computer
    options = [@player_score, @computer_score]

    @win.each do |pair|
      return "Congratulations, you win #{@player_name}!" if options == pair
    end
    @lose.each do |pair|
      return "Computer wins!" if options == pair
    end
    return "A draw!"
  end
end
