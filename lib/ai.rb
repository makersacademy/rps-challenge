class Ai

  def initialize
    @choices = ["rock","paper","scissors"]
  end

  def random_choice
    @choices.sample # returns one of the choices
  end

  def declare_winner(player, ai)

    if player == ai
      "It was a tie!"
    elsif ai_win?(player, ai)
      "The computer won!"
    else
      "You won!"
    end

  end

  def ai_win?(player, ai) 
  # define computer win moves
    ai == "paper" && player == "rock" || 
    ai == "rock" && player == "scissors" || 
    ai == "scissors" && player == "paper"
  end

end
