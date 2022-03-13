require_relative 'computer'

class Game
  attr_reader :player

  def initialize(player) 
    @player = player
    @computer = Computer.new
  end

  def result(player_choice, computer_choice)
    if player_choice == computer_choice
      'It is a draw!'
    elsif player_choice == 'Rock'
      if computer_choice == 'Scissors'
        'Rock smashes scissors! You win!'
      else
        'Scissors cuts paper! You lose!'
      end
    elsif player_choice == 'Paper'
      if computer_choice == 'Rock'
        'Paper covers rock. You win!'
      else
        'Scissors cuts paper! You lose!'
      end
    elsif player_choice == 'Scissors' 
      if computer_choice == 'Paper'
        'Scissors cuts paper! You win!'
      else
        'Rock smashes scissors! You lose'
      end
    end
  end
end