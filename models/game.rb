class Game

  WEAPONS = ["rock", "paper", "scissors"]

  def self.computer_weapon
    WEAPONS.sample
  end

  def self.result(player1, player2)
    return "Draw!" if player1 == player2
    return "Player wins!" if player1 == winning_weapon(player2)
    "Computer wins!"
  end

  private_class_method

  def self.winning_weapon(weapon)
    return "rock" if weapon == "scissors"
    return "paper" if weapon == "rock"
    return "scissors" if weapon == "paper"
  end
end
