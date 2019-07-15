class RunGame

  attr_reader

  WIN_MATRIX = {
    paper: { scissors: :lose, paper: :tie, rock: :win },
    rock: { scissors: :win, paper: :lose, rock: :draw },
    scissors: { scissors: :tie, paper: :win, rock: :lose }
    }

  def initialize(player_1, player_2)
    @player1 = player_1
    @player2 = player_2
    @winner = nil
  end

  def winner?
    if WIN_MATRIX[@player1.weapon][@player2.weapon] == :win
      @winner = @player1
      return "#{@player1.name} has won!"
    elsif WIN_MATRIX[@player1.weapon][@player2.weapon] == :lose
      @winner = @player2
      return "#{@player2.name} has won!"
    else
      return "Alas, it was an honourable draw..."
    end
  end

end
