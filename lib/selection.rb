class Selection

  attr_reader :player
  attr_accessor :computer

  def initialize(player_selection)
    @player = player_selection
    @computer = ['Rock', 'Paper', 'Scissors'].sample
  end

  def winner
    if @computer == @player
      "It's a Draw"
    elsif (@computer == "Rock" && @player == "Scissors") || ((@computer == "Paper" && @player == "Rock")) || (@computer == "Scissors" && @player == "Paper")
      "Computer wins!"
    else
      "You win!"   
    end
  end

end
