class Game
  attr_reader :player1, :player2

  WINNING_RULES = {rock:[:scissors,:lizard],
                   paper:[:rock,:spock],
                   scissors:[:paper,:lizard],
                   lizard:[:paper,:spock],
                   spock:[:rock,:scissors]}

  def initialize(player1,player2)
    @player1, @player2 = player1, player2
  end

  def result
    return 'Draw!' if draw?
    return player1_win? ? "#{player1.name} wins!"  : "#{player2.name} wins!"
  end

  private

  def draw?
    player1.choice == player2.choice
  end

  def player1_win?
    WINNING_RULES[player1.choice].include?(player2.choice)
  end
end
