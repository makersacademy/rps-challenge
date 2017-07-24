class Game
  WEAPONS = ["rock", "paper", "scissors"]
  attr_reader :computer_weapon, :player_weapon

  def initialize(player_weapon)
    @player_weapon = player_weapon
    @computer_weapon = WEAPONS.sample
  end

  def result
    if @player_weapon == @computer_weapon
      draw
    elsif
      (@player_weapon == "rock" && @computer_weapon == "scissors") || (@player_weapon == "scissors" && @computer_weapon == "paper") || (@player_weapon == "paper" && computer_weapon == "rock")
      player_wins
    else
      computer_wins
    end
  end

  def draw
    puts "Draw!"
  end

  def player_wins
    puts "You win!"
  end

  def computer_wins
    puts "You lose!"
  end

end
