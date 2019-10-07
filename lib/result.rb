class Result
  def outcome(a, b)
    if a.choice == b.choice then
      return "Draw"
    elsif a.choice == "Rock" then
      return a if b.choice == "Scissors" #Wins
      return b if b.choice == "Paper"    #Loses
    elsif a.choice == "Paper" then
      return a if b.choice == "Rock"
      return b if b.choice == "Scissors"
    elsif a.choice == "Scissors" then
      return a if b.choice == "Paper"
      return b if b.choice == "Rock"
    end
  end
end
