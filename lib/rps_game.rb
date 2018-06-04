class RpsGame

  attr_reader :rps

  def choice(choice)
    @choice = choice
  end

  def rps_selector
    @rps = ["Rock", "Paper", "Scissors"]
    @rps = rps.sample
  end

  def score
    @scores = []
    @scores << [@choice, @rps]
  end

  def referee
    if @choice == @rps
      draw
    elsif @rps == "Rock" && @choice == "Scissors"
      lose
    elsif @rps == "Scissors" && @choice == "Paper"
      lose
    elsif @rps == "Paper" && @choice == "Rock"
      lose
    else
      win
    end
  end

  def win
    "You win"
  end

  def lose
    "You lose"
  end

  def draw
    "It's a draw"
  end

end
