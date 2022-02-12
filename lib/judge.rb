class Judge

  def initialize(player_choice = nil, computer_choice = nil)
    @player_choice = player_choice
    @computer_choice = computer_choice
  end

  def winner
    if @player_choice == @computer_choice
      "It was a draw"
    elsif (@player_choice == "Rock" && @computer_choice == "Scissors") || (@player_choice == "Scissors" && @computer_choice == "Paper") || (@player_choice == "Paper" && @computer_choice == "Rock")
      "Player wins"
    else
      "Computer wins"
    end
  end

end
