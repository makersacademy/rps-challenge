class Result

  def initialize(player_selection, computer_selection)
    @player_selection = player_selection
    @computer_selection = computer_selection
    @result
    @player_score = 0
    @computer_score = 0
  end

  def calc_result
    if @player_selection == @computer_selection
      @result = 'Draw'
    elsif (@player_selection == "Rock" && @computer_selection == "Scissors")
      @result = "You win"
      @player_score += 1
    elsif @player_selection == "Paper" && @computer_selection == "Rock"
      @result = "You win"
      @player_score += 1
    elsif @player_selection == "Scissors" && @computer_selection == "Paper"
      @result = "You win"
      @player_score += 1
    elsif @player_selection == "Rock" && @computer_selection == "Paper"
      @result = "Computer wins"
      @computer_score += 1
    elsif @player_selection == "Paper" && @computer_selection == "Scissors"
      @result = "Computer wins"
      @computer_score += 1
    elsif @player_selection == "Scissors" && @computer_selection == "Rock"
      @result = "Computer wins"
      @computer_score += 1
    end
  end

  attr_reader :result, :player_selection, :computer_selection, :player_score, :computer_score

end
