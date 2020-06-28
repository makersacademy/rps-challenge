class Result
  attr_reader :result

  def result(p1, p2)
    if p1 == p2
    return "It's a Draw!" 
    elsif p1 == 'Scissors' && p2 == 'Paper' || p1 == 'Paper' && p2 == 'Rock' || p1 == 'Rock' && p2 == 'Scissors'
    return 'You win!'
    else
    'You lose!'
    end
  end
end
