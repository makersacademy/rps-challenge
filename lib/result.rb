class Result

  def rock_decision(move)
    return 'You win!' if move == 'SCISSORS'
    return 'You lose!' if move == 'PAPER'
    return 'It\'s a draw!' if move == 'ROCK'
  end

  def paper_decision(move)
    return 'You lose!' if move == 'SCISSORS'
    return 'It\'s a draw!' if move == 'PAPER'
    return 'You win!' if move == 'ROCK'
  end

  def scissors_decision(move)
    return 'It\'s a draw!' if move == 'SCISSORS'
    return 'You win!' if move == 'PAPER'
    return 'You lose!' if move == 'ROCK'
  end

end
