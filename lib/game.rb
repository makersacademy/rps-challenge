require_relative 'human'
require_relative 'computer'

class Game

  def winner?(human, computer)

    rock_win = [:scissors, :spock]
    scissors_win = [:paper, :lizard]
    paper_win = [:rock, :spock]
    spock_win = [:rock, :scissors]
    lizard_win = [:spock, :paper]

    winner = { rock: rock_win,
               scissors: scissors_win,
               paper: paper_win,
               spock: spock_win,
               lizard: lizard_win }

    winner[human.hand].include?(computer.hand)
  end

  def loser?(human, computer)

    rock_lose = [:paper, :spock]
    scissors_lose = [:rock, :spock]
    paper_lose = [:scissors, :lizard]
    spock_lose = [:paper, :lizard]
    lizard_lose = [:rock, :scissors]

    loser = { rock: rock_lose,
              scissors: scissors_lose,
              paper: paper_lose,
              spock: spock_lose,
              lizard: lizard_lose}

    loser[human.hand].include?(computer.hand)
  end

  def draw?(human, computer)
    human.hand == computer.hand
  end

end
