module Messages

  def player1_won
    "#{@players.first.name} won!"
  end

  def player2_won
    "#{@players.last.name} won!"
  end

  def draw
    "It's a draw!"
  end
end
