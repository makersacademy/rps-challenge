class Game

  def play(player1_choice,player2_choice)
    return 'Draw!' if draw?(player1_choice,player2_choice)
    return 'Player1 wins!' if player1_win?(player1_choice,player2_choice)
    return 'Player2 wins!'
  end

  private

  def draw?(player1_choice,player2_choice)
    player1_choice == player2_choice
  end

  def player1_win?(player1_choice,player2_choice)
    boolean = player1_choice == :rock && player2_choice == :scissors
    boolean = boolean || player1_choice == :paper && player2_choice == :rock
    boolean = boolean || player1_choice == :scissors && player2_choice == :paper
  end

end
