class Game

WEAPONS = ["rock", "paper", "scissors"]

  def self.computer_weapon
    WEAPONS.sample
  end

  def self.result(player, computer)
    return "Draw!" if player == computer
    return "Computer wins!" if computer == "rock" && player == "scissors"
    return "Computer wins!" if computer == "paper" && player == "rock"
    return "Computer wins!" if computer == "scissors" && player == "paper"
  end
end
