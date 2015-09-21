class Game
  attr_reader :player1, :player2, :variant

  RPS_WINNING_RULES = {:rock=>:scissors,:paper=>:rock,:scissors=>:paper}

  RPSLS_WINNING_RULES = {rock:[:scissors,:lizard],
                   paper:[:rock,:spock],
                   scissors:[:paper,:lizard],
                   lizard:[:paper,:spock],
                   spock:[:rock,:scissors]}

  def initialize(player1,player2,variant=:rpsls)
    @player1, @player2, @variant = player1, player2, variant
  end

  def result
    return 'Draw!' if draw?
    return rps_result if variant == :rps
    return rpsls_result if variant == :rpsls
  end

  private

  def draw?
    player1.choice == player2.choice
  end

  def player1_win_rps?
    RPS_WINNING_RULES[player1.choice] == player2.choice
  end

  def player1_win_rpsls?
    RPSLS_WINNING_RULES[player1.choice].include?(player2.choice)
  end

  def rps_result
    player1_win_rps? ? "#{player1.name} wins!"  : "#{player2.name} wins!"
  end

  def rpsls_result
    player1_win_rpsls? ? "#{player1.name} wins!"  : "#{player2.name} wins!"
  end
end
