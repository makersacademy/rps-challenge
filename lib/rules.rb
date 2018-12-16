class Rules

  def initialize(move, compmove)
    @move = move
    @compmove = compmove
  end

  def decide
    if @move == "Rock" && @compmove == "Scissors"
      "You won!!"
    elsif @move == "Paper" && @compmove == "Rock"
      "You won!!"
    elsif @move == "Scissors" && @compmove == "Paper"
      "You won!!"
    elsif @move == "Rock" && @compmove == "Rock"
      "You drew... A little underwhelming"
    elsif @move == "Paper" && @compmove == "Paper"
      "You drew... A little underwhelming"
    elsif @move == "Scissors" && @compmove == "Scissors"
      "You drew... A little underwhelming"
    else
      "You lost! HA"
    end
  end
  
end
