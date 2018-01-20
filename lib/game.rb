class Game

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def moves(player1_choice, player2_choice)
    winning_moves = { 'Rock' => 'Scissors', 'Paper' => 'Rock', 'Scissors' => 'Paper' }
    case player2_choice
    when player1_choice
      return "It's a draw!"
    when winning_moves[player1_choice]
      return "Player 1 wins!"
    else
      return "Player 2 wins!"
    end
  end

  private

  # def find_winner
  #   case player2_choice
  #     when player1_choice
  #       return "It's a draw!"
  #     when winning_moves[player1_choice]
  #       return "Player 1 wins!"
  #     else
  #       return "Player 2 wins!"
  #     end
  #   # if player1_choice == player2_choice
  #   #
  #   # msg =  "It's a draw!"
  #   # elsif winning_moves[player1_choice] == player2_choice
  #   #   msg =  'Player 1 wins!'
  #   # else
  #   #   msg =  'Player 2 wins!'
  #   # end
  #   # return msg
  # end


#   def attack(player)
#     player.damage
#   end
end
