require_relative './computer_rps'

class GamePlay

  def initialize(computer = ComputerRPS.new)
    @computer = computer
  end

  def game_result(player_choice)
    if player_choice.downcase == "rock" && @computer.rock_paper_scissors == "Scissors" ||
      player_choice.downcase == "paper" && @computer.rock_paper_scissors == "Rock" ||
      player_choice.downcase == "scissors" && @computer.rock_paper_scissors == "Paper"  
      "Congrats, you win!"
    elsif player_choice.downcase == @computer.rock_paper_scissors.downcase
      "Its a tie!"
    else
      "You loose!"
    end
  end

end
