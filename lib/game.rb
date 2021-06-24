require_relative 'player'
require_relative 'computer'

class Game

  def result(choice, computer_choice)
    beatmap = { 'Scissors' => 'Paper', 'Paper' => 'Rock', 'Rock' => 'Scissors' }
  
    if choice == computer_choice
      "Draw!"
    elsif beatmap[choice] == computer_choice 
      "You won!"
    else
      "You lost!"
    end
  end 
end
