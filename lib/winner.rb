class Winner

  WIN_COMBOS = [["rock", "scissors"], ["paper", "rock"], ["scissors", "paper"]]

  def initialize(players)
    @players = players
    @player1_move = @players.move1
    @player2_move = @players.move2
  end

  def determine
    WIN_COMBOS.each do |combo|
      if combo[0] == @player1_move && combo[1] == @player2_move
        return player1_won
      end
    end
    return draw if @player1_move == @player2_move
    return player2_won
  end

  def player1_won
    "#{@players.name1} won!"
  end

  def player2_won
    "#{@players.name2} won!"
  end

  def draw
    "It's a draw!"
  end

end
