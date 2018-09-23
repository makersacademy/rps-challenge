require_relative 'decision'

class Winner
  attr_reader :human, :computer

  def initialize(human, computer)
    @human = human
    @computer = computer
  end

  def result
    if human.chosen == computer
      "It's a draw"
    elsif human.chosen == "Rock" && computer == "Scissors"
      "YOU WIN!!"
    elsif human.chosen == "Scissors" && computer == "Paper"
      "YOU WIN!!"
    elsif human.chosen == "Paper" && computer == "Rock"
      "YOU WIN!!"
    else
      "You lose! Better luck next time!"
    end
  end
end
