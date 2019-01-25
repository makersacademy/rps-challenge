class Printer

  attr_reader :p1, :p2, :result_p1

  def print_result(result_p1, p1, p2)
      @p1 = p1
      @p2 = p2
      @result_p1 = result_p1
      @result_p1 == 'Draw' ? draw : not_a_draw
  end

  def not_a_draw
    "Congratulations #{winner}, you won! Better luck next time #{looser}"
  end

  def draw
    "It's a draw!"
  end

 private

  def winner
    return p1 if result_p1 == 'Win'
    p2
  end

  def looser
    return p2 if winner == p1
    p1
  end
end
