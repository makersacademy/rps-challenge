class Play
  attr_reader :computer, :player

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def compare
   
    if (player.player_choice == "rock" && computer.computer_choice == "scissors") || 
      (player.player_choice == "paper" && computer.computer_choice == "rock") || 
      (player.player_choice == "scissors" && computer.computer_choice == "paper")
      return "You win! :)"

    elsif (player.player_choice == "rock" && computer.computer_choice == "paper") ||
      (player.player_choice == "paper" && computer.computer_choice == "scissors") ||
      (player.player_choice == "scissors" && computer.computer_choice == "rock")
      return "Computer wins :("

    elsif (player.player_choice == computer.computer_choice)
      return "It's a tie!"
    end
  end
end
