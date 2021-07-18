require './app'

class Opponent
  
  def roll
    ["Rock", "Paper", "Scissors"].sample
  end

  def result(choice)
    if choice == Opponent.new.roll
      "Draw!"
    elsif choice == "Rock" && Opponent.new.roll == "Paper"
      "You lose!"
    elsif choice == "Paper" && Opponent.new.roll == "Scissors"
      "You lose!"
    elsif choice == "Scissors" && Opponent.new.roll == "Rock"
      "You lose!"
    elsif choice == "Rock" && Opponent.new.roll == "Scissors"
      "You win!"
    elsif choice == "Paper" && Opponent.new.roll == "Rock"
      "You win!"
    elsif choice == "Scissors" && Opponent.new.roll == "Paper"
      "You win!"
    end
  end

end