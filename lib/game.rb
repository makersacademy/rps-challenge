class Game
  WEAPONS = ["rock", "paper", "scissors"]

  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def result
    if @player == "rock" && @computer == "scissors"
      "You won"
    elsif @player == "scissors" && @computer == "paper"
      "You won"
    elsif @player == "paper" && @computer == "rock"
      "You won"
    else
      "Computer won"
    end
  end
end
