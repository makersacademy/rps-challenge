class Rules

  def initialize(move, compmove)
    @move = move
    @compmove = compmove
  end

  def decide
    if win?
      "You won!!"
    elsif draw?
      "You drew... A little underwhelming"
    else
      "You lost! HA"
    end
  end

  private
  def win?
    @move == "Rock" && @compmove == "Scissors" ||
    @move == "Paper" && @compmove == "Rock" ||
    @move == "Scissors" && @compmove == "Paper"
  end

  def draw?
    @move == @compmove
  end
end
