require_relative 'computer_rps'

class Winner

  def initialize(computer = Computer.new)
    @comp_move = computer.move

  end

  def result_calc(marketeer_move)

    if marketeer_move == "Scissors" && @comp_move == "Scissors" || marketeer_move == "Rock" && @comp_move == "Rock" || marketeer_move == "Paper" && @comp_move == "Paper"
      "It's a draw!"
    elsif marketeer_move == "Scissors" && @comp_move == "Paper" || marketeer_move == "Rock" && @comp_move == "Scissors" || marketeer_move == "Paper" && @comp_move == "Rock"
      "You won!"
    else
      "You lost!"
    end
  end

end
