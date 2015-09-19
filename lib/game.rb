class Game

  def play(player1,player2)
    return 'Draw!' if draw?(player1,player2)
    return "#{player1.name} wins!" if player1_win?(player1,player2)
    return "#{player2.name} wins!"
  end

  private

  def draw?(player1,player2)
    player1.choice == player2.choice
  end

  def player1_win?(player1,player2)
    boolean = player1.choice == :rock && player2.choice == :scissors
    boolean = boolean || player1.choice == :paper && player2.choice == :rock
    boolean = boolean || player1.choice == :scissors && player2.choice == :paper
  end

end
