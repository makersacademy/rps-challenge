class Play

  def initialize
    @RPS = ["rock", "paper", "scissors"]
  end

  def draw
    @RPS.sample
  end

  def result
    if @computer == "rock" && @play == "rock" || @computer == "paper" && @play == "paper" || @computer == "scissors" && @play = "scissors"
    puts "It's a tie!"
    else
    puts "It's not a tie!"
  end
end
end
