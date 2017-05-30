require './lib/computer'
require './lib/player'

class Game
  def rules(choice)
    @choice = choice

    if @choice == 'Paper'
      if @computer_move == "Paper"
        return "It is a draw!!"
      elsif @computer_move == "Rock"
        return "You Win!!"
      else
        return "You Lose!!"
      end
    elsif @choice == 'Rock'
      if @computer_move == "Rock"
        return "It is a draw!!"
      elsif @computer_move == "Scissors"
        return "You Win!!"
      else
        return "You Lose!!"
      end
    else
      if @computer_move == "Scissors"
        return "It is a draw!!"
      elsif @computer_move == "Paper"
        return "You Win!!"
      else
        return "You Lose!!"
      end
    end
    
  end
end
