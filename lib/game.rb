require_relative 'player'

class Game
  MOVES = { Rock: :Scissor, Paper: :Rock, Scissor: :Paper }

  def computer_move
    MOVES.sample
  end

  # def result
  #   if draw?
  #     "It's a tie"
  #   elsif wins?
  #     'You won!'
  #   else
  #     'You lost!'
  #   end
  # end

  # private

  # def wins?
  #   MOVES[user_move] == computer_move  
  # end

  # def draw?
  #   user_move == computer_move  
  # end 
end
