require_relative 'human'
require_relative 'computer'

class Game

  def winner?(human, computer)

    winner = { rock: [:scissors, :spock],
               scissors: [:paper, :lizard],
               paper: [:rock, :spock],
               spock: [:rock, :scissors],
               lizard: [:spock, :paper] }

    winner[human.hand].include?(computer.hand)
  end

  def loser?(human, computer)

    loser = { rock: [:paper, :spock],
              scissors: [:rock, :spock],
              paper: [:scissors, :lizard],
              spock: [:paper, :lizard],
              lizard: [:rock, :scissors]}

    loser[human.hand].include?(computer.hand)
  end

  def draw?(human, computer)
    human.hand == computer.hand
  end

end
