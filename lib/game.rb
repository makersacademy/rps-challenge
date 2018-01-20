class Game
  attr_reader :player1, :player2, :winner

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [@player1, @player2]
    @beats = { rock: :scissors, paper: :rock, scissors: :paper }
  end

  def determine_outcome
    return :tie if tie?
    if @beats[@player1.move] == @player2.move
      @winner = @player1
    else
      @winner = @player2
    end
  end

  private

  def tie?
    true if @player1.move == @player2.move
  end

end
