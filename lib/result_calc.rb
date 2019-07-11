class ResultCalc
  WINNERS = [['Scissors', 'Paper'], ['Paper', 'Rock'], ['Rock', 'Scissors']]
  LOSERS =  WINNERS.map { |i,j| [j,i] }
  def result(a, b)
    entry = [a, b]
    return 'YOU HAVE WON' if WINNERS.include?(entry)
    return 'YOU HAVE LOST' if LOSERS.include?(entry)
    'YOU HAVE DRAWN'
  end
end