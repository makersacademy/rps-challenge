class Result

  attr_reader :result

  def result(p1, p2)
  return 'You win!' if p1 == 'Scissors' && p2 == 'Paper'
  return 'You win!' if p1 == 'Paper' && p2 == 'Rock'
  return 'You win!' if p1 == 'Rock' && p2 == 'Scissors'
  return "It's a Draw!" if p1 == p2
  'You lose!'
end

#  def result
#  if (@playerchoice == "Rock" && @computer.weapon == "Scissors")
# "You win!"
# elsif (@playerchoice == "Rock" && @computer.weapon == "Paper")
#  "You Lose!"
#  elsif (@playerchoice == "Rock" && @computer.weapon == "Rock")
#  "It's a Draw!"
#  elsif (@playerchoice == "Paper" && @computer.weapon == "Rock")
#  "You win!"
#  elsif (@playerchoice == "Paper" && @computer.weapon == "Scissors")
#  "You Lose!"
#  elsif (@playerchoice == "Paper" && @computer.weapon == "Paper")
#  "It's a Draw!"
#  elsif (@playerchoice == "Scissors" && @computer.weapon == "Paper")
#  "You win!"
#  elsif (@playerchoice == "Scissors" && @computer.weapon == "Rock")
#  "You Lose!"
#  else (@playerchoice == "Scissors" && @computer.weapon == "Scissors")
#  "It's a Draw!"
#  end
# end
end