class Game

  def play(player1_choice,player2_choice)
    'Player1 wins!' if player1_win?(player1_choice,player2_choice)
  end

  private
  # 
  # def draw?(player1_choice,player2_choice)
  #   player1_choice == player2_choice
  # end

  def player1_win?(player1_choice,player2_choice)
    player1_choice == :rock && player2_choice == :scissors
  end

end
