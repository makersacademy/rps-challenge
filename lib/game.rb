class Game

  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def result
      case
    when player == "rock" && computer == "scissors"
      puts "You win!"
    when computer == "rock" && player == "scissors"
      puts "Computer wins"
    when player == "paper" && computer == "rock"
      puts "You win!"
    when computer == "paper" && player == "rock"
      puts "Computer wins"
    when player == "scissors" && computer == "paper"
      puts "You win!"
    when computer == "scissors" && player == "paper"
      puts "Computer wins"
    else
      puts "It's a draw"
    end
  end

end
