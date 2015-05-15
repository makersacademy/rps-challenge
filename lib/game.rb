class Game

  def computer_choice
    computer_choice = ["Rock", "Paper","Scissors"].sample
  end

  def player_choice
    player_choice = ["Rock", "Paper","Scissors"]
  end

  def result (p1,p2)
  if
  p1 == p2
  'Draw'

  else
    'Computer wins'
end
end
end
