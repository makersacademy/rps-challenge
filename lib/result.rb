class Result

  def initialize(player_selection, computer_selection)
    @player_selection = player_selection
    @computer_selection = computer_selection
    @result
  end

  def calc_result
    if @player_selection == @computer_selection
      @result = 'Draw'
    elsif (@player_selection == "Rock" && @computer_selection == "Scissors")
      @result = "You win"
    elsif @player_selection == "Paper" && @computer_selection == "Rock"
      @result = "You win"
    elsif @player_selection == "Scissors" && @computer_selection == "Paper"
      @result = "You win"
    elsif @player_selection == "Rock" && @computer_selection == "Paper"
      @result = "Computer wins"
    elsif @player_selection == "Paper" && @computer_selection == "Scissors"
      @result = "Computer wins"
    elsif @player_selection == "Scissors" && @computer_selection == "Rock"
      @result = "Computer wins"
    end
  end

  attr_reader :result, :player_selection, :computer_selection

end
