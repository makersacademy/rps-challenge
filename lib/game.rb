class Game

  attr_reader :player, :computer
  def initialize(player)
    @player = player
    @computer = nil
  end

  def computer_choice
    @computer = Game.random
  end

  def self.random
    ["Rock", "Paper", "Scissors"].sample
  end

  def win_lose_draw(player, computer)
    if (player == "Rock" && computer == "Scissors") || (player == "Paper" && computer == "Rock") || (player == "Scissors" && computer == "Paper")
      "win"
    elsif (player == "Rock" && computer == "Paper") || (player == "Paper" && computer == "Scissors") || (player == "Scissors" && computer == "Rock")
      "lose"
    elsif (player == "Rock" && computer == "Rock") || (player == "Paper" && computer == "Paper") || (player == "Scissors" && computer == "Scissors")
      "draw"
    end
  end
end
