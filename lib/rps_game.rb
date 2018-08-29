class RpsGame

  attr_reader :rps, :rpsmove

  def choice(choice)
    @choice = choice
  end

  def rps_selector
    @rps = ["Rock", "Paper", "Scissors"]
    @rpsmove = @rps.sample
  end

  def score
    @scores = []
    @scores << [@choice, @rps]
  end

  def referee
    if @choice == @rps
      puts "It's a draw"
    elsif (@rps == "Rock" && @choice == "Scissors") ||
      (@rps == "Scissors" && @choice == "Paper") ||
      (@rps == "Paper" && @choice == "Rock")
      puts "You lose"
    else
      "You win"
    end
  end

end
