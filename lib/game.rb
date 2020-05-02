class Game
  attr_reader :player, :computer, :draw

  def initialize(player, computer)
    @player = player
    @computer = computer
    @draw = false
  end

  def who_wins
    if (player.choice == "rock" && computer.choice == "paper") ||
       (player.choice == "paper" && computer.choice == "scissors") ||
       (player.choice == "scissors" && computer.choice == "rock")
       return computer
    elsif (player.choice == "rock" && computer.choice == "scissors") ||
          (player.choice == "paper" && computer.choice == "rock") ||
          (player.choice == "scissors" && computer.choice == "paper")
          return player
    else
      @draw = true
    end
  end
end
