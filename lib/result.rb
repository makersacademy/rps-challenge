class Result

  def rock_verdict(move)
    return 'You win!' if move == 'SCISSORS'
    return 'You lose!' if move == 'PAPER'
    return 'Draw!' if move == 'ROCK'
  end

end
