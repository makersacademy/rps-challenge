require_relative 'player'

class Game

  attr_reader :players, :weapons, :computer_weapon

  def initialize(player1, computer)
    @players = [player1, computer]
    @weapons = ["Rock", "Paper", "Scissors"]
  end

  def player1
    @players.first
  end

  def computer
    @players.last
  end

  def weapon_selection
    player1.weapon_of_choice
  end

  def computer_random_weapon
    @computer_weapon = @weapons.sample
  end

  def winning_choices
    winning_choices = { "Scissors" => "Paper", "Paper" => "Rock", "Rock" => "Scissors" }
  end

end
