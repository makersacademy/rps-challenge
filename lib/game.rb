require_relative 'human'
require_relative 'computer'

class Game

  def winner?(human, computer)
    return true if human.hand == :rock && (computer.hand == :scissors || computer.hand == :spock)
    return true if human.hand == :scissors && (computer.hand == :paper || computer.hand == :lizard)
    return true if human.hand == :paper && (computer.hand == :rock || computer.hand == :spock)
    return true if human.hand == :spock && (computer.hand == :rock || computer.hand == :scissors)
    return true if human.hand == :lizard && (computer.hand == :spock || computer.hand == :paper)
  end

  def loser?(human, computer)
    return true if human.hand == :rock && (computer.hand == :paper || computer.hand == :spock)
    return true if human.hand == :scissors && (computer.hand == :rock || computer.hand == :spock)
    return true if human.hand == :paper && (computer.hand == :scissors || computer.hand == :lizard)
    return true if human.hand == :spock && (computer.hand == :paper || computer.hand == :lizard)
    return true if human.hand == :lizard && (computer.hand == :rock || computer.hand == :scissors)
  end

  def draw?(human, computer)
    return true if human.hand == :rock && computer.hand == :rock
    return true if human.hand == :scissors && computer.hand == :scissor
    return true if human.hand == :paper && computer.hand == :paper
    return true if human.hand == :spock && computer.hand == :spock
    return true if human.hand == :lizard && computer.hand == :lizard
  end
end
