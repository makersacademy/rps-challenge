class Game

  attr_reader :computer_weapon
  
  def initialize
    @computer_weapon = ["Rock", "Paper", "Scissors"].sample
  end

  def compare_weapons(player_weapon)
    return "It's a tie." if player_weapon == @computer_weapon
    return "You win." if player_weapon == "Scissors" && @computer_weapon == "Paper"
    return "I win." if player_weapon == "Paper" && @computer_weapon == "Scissors"
    return "You win." if player_weapon < @computer_weapon
    
    "I win."
  end

end
