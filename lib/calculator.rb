class Calculator

  def initialize
  end

  def calculate(human_move, computer_move)
    if human_move == computer_move
      "It's a draw!"
    elsif (human_move == 'rock' && computer_move == 'scissors') || (human_move == 'paper' && computer_move == 'rock') || (human_move == 'scissors' && computer_move == 'paper')
      "You win!"
    else
      "The computer has won :("
    end
  end

end