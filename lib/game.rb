class Game
attr_reader :move1, :move2

  def initialize(choice)
    @move1 = choice
  end

  def game
    @move2 = ["rock", "paper", "scissors"].sample
    p @move1
    p @move2

    if @move1 == @move2
      "It's a draw!"

    elsif @move1 == "rock" and @move2 == "scissors"
      "You win!"

    elsif @move1 == "paper" and @move2 == "rock"
      "You win!"

    elsif @move1 == "scissors" and @move2 == "paper"
      "You win!"
    else
      "You lose!"
    end
  end



end
