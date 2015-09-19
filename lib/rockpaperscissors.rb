class Rockpaperscissors

  def initialize
    @beaten_by = {rock: [:paper, :spock],
                  scissors: [:rock, :spock],
                  paper: [:scissors, :lizard],
                  lizard: [:scissors, :rock],
                  spock: [:lizard, :paper]}
  end

  def computer_choice
    [:paper, :rock, :scissors, :lizard, :spock].shuffle.first
  end

  def rock
    :rock
  end

  def paper
    :paper
  end

  def scissors
    :scissors
  end

  def lizard
    :lizard
  end

  def spock
    :spock
  end

  def winner(player1, player2)
    return :draw if player1==player2
    @beaten_by.values_at(player1)[0].include?(player2) ? :player2 : :player1
  end

end
