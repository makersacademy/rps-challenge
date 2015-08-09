require_relative './player'

class Game
  
  attr_reader :options, :player

  def initialize
    @options = ['Rock', 'Paper', 'Scissors']
  end

  def computer_choice
    @options.sample
  end

  def result(player)
    "You have tied" if player.choice == computer_choice
    "Player wins" if player.choice == 'Rock' && computer_choice == 'Scissors'
    "Player wins" if player.choice == 'Paper' && computer_choice == 'Rock'
    "Player wins" if player.choice == 'Scissors' && computer_choice == 'Paper'
    "Computer wins"
  end


end