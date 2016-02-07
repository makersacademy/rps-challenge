require './lib/player'
require './lib/computer'
class Game
  WIN_MATRIX = {
    rock:         [:scissors, :lizard],
    scissors:     [:paper, :lizard],
    paper:        [:rock, :spock],
    lizard:       [:spock, :paper],
    spock:        [:rock, :scissors]
    }
  attr_reader :player1, :computer

  def initialize(player1, computer)
    @computer = computer
    @player1 = player1
    @winner = nil
  end

  def winner(p1,p2)
    p1 = p1.to_sym
    p2 = p2.to_sym
    return @winner = ": NO WINNER" if p1 == p2
    WIN_MATRIX[p1].include?(p2) ? @winner = player1.name : @winner = computer.name
  end
end
