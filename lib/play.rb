class Play

  attr_reader :computer, :player

  def initialize(player, computer)
    @player = player
    @computer = player
  end

  def compare
    if (player.player_choice == "rock" && computer.computer_choice == "scissors")
      return "Computer choice is: " + computer.computer_choice + ", you win! :)"
    elsif (player.player_choice == "rock" && computer.computer_choice == "paper")
      return "Computer choice is: " + computer.computer_choice + ", computer wins :("
    elsif (player.player_choice == "paper" && computer.computer_choice == "scissors")
      return "Computer choice is: " + computer.computer_choice + ", computer wins :("
    elsif (player.player_choice == "paper" && computer.computer_choice == "rock")
      return "Computer choice is: " + computer.computer_choice + ", you win! :)"
    elsif (player.player_choice == "scissors" && computer.computer_choice == "rock")
      return "Computer choice is: " + computer.computer_choice + ", computer wins :("
    elsif (player.player_choice == "scissors" && computer.computer_choice == "paper")
      return "Computer choice is: " + computer.computer_choice + ", you win! :)"
    elsif (player.player_choice == computer.computer_choice)
      return "It's a tie!"
    end
  end

end