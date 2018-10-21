class Game
  attr_reader :player1, :player2, :choices, :winner, :rules, :loser
  TIE = "It's a tie!"
  NOT_CHOSEN = 'Not everyone chosen'
  def initialize(player1, player2, choices, rules)
    @player1 = player1
    @player2 = player2
    @choices = choices
    @rules = rules
    @winner = nil
    @loser = nil
  end

  def tie?
    raise NOT_CHOSEN if @player1.choice.nil? || @player2.choice.nil?
    @tie = !!(@player1.choice == @player2.choice)
  end

  def game_over
    return TIE if tie?
    @winner = (@player1.choice.win.include?(@player2.choice.name) ?
     @player1 : @player2)
    @loser = opposite_of(@winner)
  end

  def opposite_of(player)
    player == @player1 ? @player2 : @player1
  end

  def winner_text
    string = "#{@winner.choice.name}_#{@loser.choice.name}"
    @rules.rules[string.to_sym]
  end
end
