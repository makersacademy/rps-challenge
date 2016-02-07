class Game

  attr_reader :winner, :player_1, :player_2

  WINNING_MOVES = {
          Rock:         [:Scissors, :Lizard],
          Scissors:     [:Paper, :Lizard],
          Paper:        [:Rock, :Spock],
          Lizard:       [:Spock, :Paper],
          Spock:        [:Rock, :Scissors]
        }

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @winner = nil
  end

  def result(p1,p2)
    p1 = p1.to_sym
    p2 = p2.to_sym
    return @winner = :Draw if p1 == p2
    WINNING_MOVES[p1].include?(p2) ? @winner = player_1.name : @winner = player_2.name
  end
end
