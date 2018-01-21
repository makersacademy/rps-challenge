class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [@player1, @player2]
    @beats = { rock: :scissors, paper: :rock, scissors: :paper }
  end

  def winner
    return :tie if tie?
    @beats[@player1.move] == @player2.move ? @player1 : @player2
  end

  def loser
    return :tie if tie?
    @beats[@player1.move] == @player2.move ? @player2 : @player1
  end

  def print_outcome
    return "Tie! Both chose #{@player1.move}!" if tie?
    "#{winner.move} beats #{loser.move}. #{winner.name} wins!"
  end

  private

  def tie?
    @player1.move == @player2.move
  end
end
