class Turn

  def initialize(p1,p2)
    @p1 = p1
    @p2 = p2
  end

  def result
    return message[:tie] if tie?
    return message[:lose] if lose?
    message[:win]
  end

  private

  def message
    { win: 'You won!', lose: 'You lost!', tie: 'No winners!' }
  end

  def tie?
    @p1 == @p2
  end

  def lose?
    @p1 == 'Rock' && @p2 == 'Paper' || @p1 == 'Scissors' && @p2 == 'Rock' || @p1 == 'Paper' && @p2 == 'Scissors'
  end

end
