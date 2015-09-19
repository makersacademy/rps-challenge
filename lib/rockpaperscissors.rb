class Rockpaperscissors

  def initialize
    @beaten_by = {rock: :paper,
                scissors: :rock,
                paper: :scissors}
  end

  def computer_choice
    [:paper, :rock, :scissors].shuffle.first
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

  def winner(player1, player2)
    @beaten_by.values_at(player1).include?(player2) ? :player2 : :player1
  end

end
