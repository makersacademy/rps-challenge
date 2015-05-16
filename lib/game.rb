class Game

attr_accessor :player1, :player2

  def initialize(player1 = nil, player2 = nil)
    @player1 = player1
    @player2 = player2
    @defeat = { rock: :scissors, paper: :rock, scissors: :paper }
  end

  def player1_won?
    player2.choice == @defeat[player1.choice]
  end

  def draw?
    player1.choice == player2.choice
  end

  def winner
    if draw?
      "Draw"
    elsif player1_won?
      player1.name
    else
      player2.name
    end
  end
end