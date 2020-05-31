class Result
  attr_reader :comp_choice, :move

  def initialize(comp_choice, move)
    @comp_choice = comp_choice
    @move = move
  end

  def results
    if @comp_choice == @move
      "It's a draw!"
    elsif @comp_choice == "Rock" && @move == "Scissors"
      "You lost!"
    elsif @comp_choice == "Rock" && @move == "Paper"
      "You won!"
    elsif @comp_choice == "Paper" && @move == "Scissors"
      "You won!"
    elsif @comp_choice == "Paper" && @move == "Rock"
      "You lost!"
    elsif @comp_choice == "Scissors" && @move == "Paper"
      "You lost!"
    else @comp_choice == "Scissors" && @move == "Rock"
      "You won!"
    end
  end
end