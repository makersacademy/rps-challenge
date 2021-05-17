class Game
attr_reader :choice, :winner

  def computer_random
    computer = rand(3)
    if computer == 0
      computer = "Rock"
    elsif computer == 1
      computer = "Paper"
    else
      computer = "Scissors"
    end
  end

  def who_wins
  computer_random
    if computer == @choice
      @winner = "We both had #{@choice}. It's a Draw!"
    elsif (computer == "Rock" && @choice == "Scissors") || (computer == "Paper" && @choice == "Rock") || (computer == "Scissor" && @choice == "Paper")
      @winner = "Computer has #{computer} and Player has #{@choice}. Player loses!"
    else
      @winner = "Computer has #{computer} and Player has #{@choice}. Player wins!"
    end
  end

end