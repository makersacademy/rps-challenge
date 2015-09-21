require_relative 'computer'
require_relative 'player'

class Game

  def player_wins(player, computer)
    return "Player wins" if player.player_weapon == "paper" && computer.computer_weapon == "rock"
    return "Player wins" if player.player_weapon == "scissors" && computer.computer_weapon  == "paper"
    return "Player wins" if player.player_weapon == "rock" && computer.computer_weapon  == "scissors"
  end

  def computer_wins(player, computer)
    return "Computer wins" if player.player_weapon == "rock" && computer.computer_weapon == "paper"
    return "Computer wins" if player.player_weapon  == "paper" && computer.computer_weapon == "scissors"
    return "Computer wins" if player.player_weapon  == "scissors" && computer.computer_weapon == "rock"
  end

  def draw(player, computer)
    return "Draw" if player.player_weapon == computer.computer_weapon
  end

end