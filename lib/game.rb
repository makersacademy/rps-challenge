

class Game
   def pick(option)
    computer = ["Rock", "Paper", "Scissors"].sample

    if option == computer
        "This is a draw"
    elsif option == "Paper" && computer == "Rock"
        "You Won!! Paper covers Rock"
    elsif option == "Scissors" && computer == "Paper"
        "You won!! Scissors cuts Paper"
    elsif option == "Rock" && computer == "Scissors"
        "You won!! Rock beats scissors"
    else 
        "Sorry, you lost :("
   end
  end
end