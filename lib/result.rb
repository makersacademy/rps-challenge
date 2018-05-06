class Result

  def rock_verdict(move)
    return 'You win!' if move == 'SCISSORS'
    return 'You lose!' if move == 'PAPER'
    return 'Draw!' if move == 'ROCK'
  end

  def paper_verdict(move)
    return 'You lose!' if move == 'SCISSORS'
    return 'Draw!' if move == 'PAPER'
    return 'You win!' if move == 'ROCK'
  end

  def scissors_verdict(move)
    return 'Draw!' if move == 'SCISSORS'
    return 'You win!' if move == 'PAPER'
    return 'You lose!' if move == 'ROCK'
  end

end
