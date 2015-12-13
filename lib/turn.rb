class Turn

  MESSAGES = { win: 'You won!', lose: 'You lost!', tie: 'No winners!' }

  attr_reader :message

  def initialize(player1,player2)
    @player1 = player1
    @player2 = player2
    @p1 = player1.selection
    @p2 = player2.selection
    @message = nil
  end

  def play
    if tie?
      @message = MESSAGES[:tie]
    elsif lose?
      @player2.score_up
      @message = MESSAGES[:lose]
    else
      @player1.score_up
      @message = MESSAGES[:win]
    end
  end

  private

  def tie?
    @p1 == @p2
  end

  def lose?
    @p1 == 'Rock' && @p2 == 'Paper' || @p1 == 'Scissors' && @p2 == 'Rock' || @p1 == 'Paper' && @p2 == 'Scissors'
  end

end
