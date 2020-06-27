class Result
  attr_reader :result

  def result(p1, p2)
    return 'You win!' if p1 == 'Scissors' && p2 == 'Paper'
    return 'You win!' if p1 == 'Paper' && p2 == 'Rock'
    return 'You win!' if p1 == 'Rock' && p2 == 'Scissors'
    return "It's a Draw!" if p1 == p2
    'You lose!'
  end
end