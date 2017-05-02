class Result
  attr_reader :game_result, :win_cases

  def initialize(player1_choice, incumbent_choice)
    @win_cases = {
      :Rock => [:Scissors, :Lizard],
      :Paper => [:Rock, :Spock],
      :Scissors => [:Paper, :Lizard],
      :Lizard => [:Paper, :Spock],
      :Spock => [:Scissors, :Rock]}
    @player1_choice = player1_choice
    @incumbent_choice = incumbent_choice
    game_result
  end

  def game_result
    if @win_cases[@player1_choice].include?(@incumbent_choice)
      @game_result = "You win!"

    elsif @player1_choice == @incumbent_choice
      @game_result = "It's a draw!"
      
    else
      @game_result = "The computer wins!"
    end
  end

end
