require_relative 'computer'
require_relative 'human'

class Game

  def human_winner?(human, computer)
    return true if human.choice == :rock && computer.choice == :scissors
    return true if human.choice == :paper && computer.choice == :rock
    return true if human.choice == :scissors && computer.choice == :paper
  end

  def human_loser?(human, computer)
    return true if human.choice == :rock && computer.choice == :paper
    return true if human.choice == :paper && computer.choice == :scissors
    return true if human.choice == :scissors && computer.choice == :rock
  end

  def draw?(human, computer)
    return true if human.choice == computer.choice
  end

end

