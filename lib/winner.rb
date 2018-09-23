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
    elsif human.chosen == "Rock" && computer == "Lizard"
      "Ah, you crushed me! YOU WIN!!"
    elsif human.chosen == "Scissors" && computer == "Paper"
      "YOU WIN!!"
    elsif human.chosen == "Scissors" && computer == "Lizard"
      "Bit harsh chopping off my head, but ah well! YOU WIN!!"
    elsif human.chosen == "Paper" && computer == "Rock"
      "YOU WIN!!"
    elsif human.chosen == "Paper" && computer == "Spock"
      "Ah, you have disproven me! YOU WIN!!"
    elsif human.chosen == "Spock" && computer == "Rock"
      "Ah, you vaporized me! YOU WIN!!"
    elsif human.chosen == "Spock" && computer == "Scissors"
      "Ah, you smashed me! YOU WIN!!"
    elsif human.chosen == "Lizard" && computer == "Spock"
      "Ah, you poisoned me! YOU WIN!!"
    elsif human.chosen == "Lizard" && computer == "Paper"
      "Hope I was tasty! YOU WIN!!"
    else
      "You lose! Better luck next time!"
    end
  end
end
