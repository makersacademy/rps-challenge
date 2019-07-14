class Game
  
  attr_reader :computer

  def initialize
    @computer = ["rock", "paper", "scissors"]
  end

  def play(choice)
    if choice == @computer.sample
      "It's a draw"
    elsif choice == "rock" && computer_chose_scissors
      "you win!"
    elsif choice == "scissors" && computer_chose_paper
      "you win!"
    elsif choice == "paper" && computer_chose_rock
      "you win!"
    elsif computer_chose_rock && choice = "scissors"
      "you lose!"
    elsif computer_chose_scissors && choice = "paper"
      "you lose!"
    else computer_chose_paper && choice = "rock"
      "you lose!"
    end
  end

  private

  def computer_chose_paper
    @computer.sample == "paper"
  end

  def computer_chose_rock
    @computer.sample == "rock"
  end

  def computer_chose_scissors
    @computer.sample == "scissors"
  end

end