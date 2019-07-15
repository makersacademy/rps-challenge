class Game
  
  attr_reader :computer

  def initialize
    @computer = ["rock", "paper", "scissors"].sample
  end

  def play(choice)
    if choice == @computer
      "It's a draw!"
    elsif choice == "rock" && computer_chose_scissors
      "You win with rock!"
    elsif choice == "scissors" && computer_chose_paper
      "You win with scissors!"
    elsif choice == "paper" && computer_chose_rock
      "You win with paper!"
    elsif computer_chose_rock && choice == "scissors"
      "CPU wins with rock!"
    elsif computer_chose_scissors && choice == "paper"
      "CPU wins with scissors!"
    else computer_chose_paper && choice == "rock"
      "CPU wins with paper!"
    end
  end

  private

  def computer_chose_paper
    @computer == "paper"
  end

  def computer_chose_rock
    @computer == "rock"
  end

  def computer_chose_scissors
    @computer == "scissors"
  end

end