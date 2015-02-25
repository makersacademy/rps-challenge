class Game

attr_reader :players, :player1, :player2, :winner

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [@player1, @player2]
  end

  WINNING_MOVE = {rock: :scissors, scissors: :paper, paper: :rock}

  def winner
    if player1.choice == player2.choice
      return "Draw"
    elsif WINNING_MOVE[weapon(player1.choice)] == weapon(player2.choice)
      return player1
    else
      player2
    end
  end

  def weapon(choice)
    choice.downcase.to_sym
  end

end
