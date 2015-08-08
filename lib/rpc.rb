def rpc p1, p2
  if (p1 == "rock" && p2 == "scissors") || (p2 == "paper" && p1 == "scissors") || (p2 == "rock" && p1 == "paper")
    true
  elsif p1 == p2
    "draw"
  else
    false
  end
end