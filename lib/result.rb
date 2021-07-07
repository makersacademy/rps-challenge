class Result
  WIN = [['Scissors', 'Paper'], ['Paper', 'Rock'], ['Rock', 'Scissors']]
  LOSE =  WIN.map { |i,j| [j,i] }
  def result(a, b)
    entry = [a, b]
    return 'Yay! You have won! 👏🏼' if WIN.include?(entry)
    return 'Pshh. Loser! 🙄' if LOSE.include?(entry)
    "It's a draw! 🤝"
  end
end
