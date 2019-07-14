class Game
  
  attr_reader :computer

  def initialize
    @computer = ["rock", "paper", "scissors"]
  end

  def play(choice)
    if choice == @computer.sample
      "It's a draw!"
    elsif choice == "rock" && computer_chose_scissors
      "You win!"
    elsif choice == "scissors" && computer_chose_paper
      "You win!"
    elsif choice == "paper" && computer_chose_rock
      "You win!"
    elsif computer_chose_rock && choice = "scissors"
      "CPU wins!"
    elsif computer_chose_scissors && choice = "paper"
      "CPU wins!"
    else computer_chose_paper && choice = "rock"
      "CPU wins!"
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