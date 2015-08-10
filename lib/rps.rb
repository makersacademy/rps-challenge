def rps p1, p2
  if (p1 == "Rock" && p2 == "Scissors") || (p2 == "Paper" && p1 == "Scissors") || (p2 == "Rock" && p1 == "Paper")
    "win"
  elsif p1 == p2
    "draw"
  else
    "lose"
  end
end