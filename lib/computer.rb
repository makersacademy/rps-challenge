class Computer

attr_reader :player_selection, :computer

  def initialize
    @player_selection = player_selection
    @computer = computer
  end

  def computer
    @computer = ['rock', 'paper', 'scissors'].sample
  end

  def winner(computer, player_selection)
    if @computer == @player_selection
      "Draw!"
    elsif @computer == "rock" && @player_selection == "Scissors"
      "You lose!"
    elsif @computer == "paper" && @player_selection == "Rock"
      "You lose!"
    elsif @computer == "scissors" && @player_selection == "Paper"
      "You lose!"
    else
      "You win!"
    end
end
end
