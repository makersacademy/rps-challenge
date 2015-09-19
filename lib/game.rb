require_relative 'human'
require_relative 'computer'

class Game

  def winner?(human, computer)
    return true if human.hand == :rock && computer.hand == :scissors
    return true if human.hand == :scissors && computer.hand == :paper
    return true if human.hand == :paper && computer.hand == :rock
  end

  def loser?(human, computer)
    return true if human.hand == :rock && computer.hand == :paper
    return true if human.hand == :scissors && computer.hand == :rock
    return true if human.hand == :paper && computer.hand == :scissors
  end

  def draw?(human, computer)
    return true if human.hand == :rock && computer.hand == :rock
    return true if human.hand == :scissors && computer.hand == :scissor
    return true if human.hand == :paper && computer.hand == :paper
  end
end
