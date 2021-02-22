def results(choice1, choice2)
  if choice1 == choice2
    result = "You tied!"
  elsif choice1 == "rock"
    if choice2 == "paper"
      result = "Paper covers rock, you lose!"
    elsif choice2 == "scissors"
      result = "Rock smashes scissors, you win!"
    end
  elsif choice1 == "paper"
    if choice2 == "scissors"
      result = "Scissors cuts paper, you lose!"
    elsif choice2 == "rock"
      result = "Paper covers rock, you win!"
    end
  elsif choice1 == "scissors"
    if choice2 == "rock"
      result = "Rock smashes scissors, you lose!"
    elsif choice2 == "paper"
      result = "Scissors cut paper, you win!"
    end
  end
  return result
end
