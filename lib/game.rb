class Game

  def random_choice
    ['rock','paper','scissors'].sample
  end

  def who_won(p1, p2)
    if (p1 == "scissors" && p2 == "paper") ||
       (p1 == "paper" && p2 == "rock")     ||
       (p1 == "paper" && p2 == "rock")     ||
       (p1 == "rock" && p2 == "lizard")    ||
       (p1 == "lizard" && p2 == "spock")   ||
       (p1 == "spock" && p2 == "scissors") ||
       (p1 == "scissors" && p2 == "lizard")||
       (p1 == "lizard" && p2 == "paper")   ||
       (p1 == "rock" && p2 == "scissors")  ||
       (p1 == "paper" && p2 == "spock")    ||
       (p1 == "spock" && p2 == "rock")
      "You won!"
    elsif p1 == p2
      "DRAW!"
    else
      "You lost!"
    end
  end
end
