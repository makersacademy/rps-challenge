class Result
  WINNERS = [['Scissors', 'Paper'], ['Paper', 'Rock'], ['Rock', 'Scissors']]
  LOSERS =  WINNERS.map { |i,j| [j,i] }
  def result(a, b)
    entry = [a, b]
    return 'Yay! You have won! 👏🏼' if WINNERS.include?(entry)
    return 'Pshh. Loser! 🙄' if LOSERS.include?(entry)
    "It's a draw! 🤝"
  end
end
