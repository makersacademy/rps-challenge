require_relative 'player'

class Game
  attr_reader :player_1, :player_1_choice, :computer_choice

  WIN = { 'rock' => 'scissors', 'scissors' => 'paper', 'paper' => 'rock' }

  def initialize(player_1)
    @player_1 = player_1
  end

  def player_choice(player_1_choice)
    @player_1_choice = player_1_choice.to_s
  end

  def computer_choice?
    @computer_choice = ["rock", "paper", "scissors"].sample
  end

  def win?(player_choice, computer_choice)
    if WIN[player_choice][computer_choice]
      return true
    elsif player_choice == computer_choice
      return 'draw'
    else
      return false
    end
  end

end
