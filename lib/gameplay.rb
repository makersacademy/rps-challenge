require_relative './computer_rps'

class GamePlay

  def initialize(computer = ComputerRPS.new)
    @computer = computer
  end

  def computer_move
    @comp_move = @computer.rock_paper_scissors
  end

  def game_result(player_choice)
    if player_choice.downcase == "rock" && @comp_move == "Scissors" ||
      player_choice.downcase == "paper" && @comp_move == "Rock" ||
      player_choice.downcase == "scissors" && @comp_move == "Paper"
      "Congrats, you win!"
    elsif player_choice.downcase == @comp_move.downcase
      "Its a tie!"
    else
      "You loose!"
    end
  end

end
