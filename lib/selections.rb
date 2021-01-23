class Selections

  def initialize(choice1, choice2)
    @choice1 = choice1
    @choice2 = choice2
  end

  def winner
    return "You win!" if @choice1 == "Scissors" && @choice2 == "Paper"
    return "You win!" if @choice1 == "Paper" && @choice2 == "Rock"
    return "You win!" if @choice1 == "Rock" && @choice2 == "Scissors"
    return "It's a draw!" if @choice1 == @choice2
    "Computer wins!"
  end 

end