class Game
  WIN_MATRIX = {
    rock: { paper: :lose, scissors: :win, rock: :draw },
    paper: { scissors: :lose, rock: :win, paper: :draw },
    scissors: { rock: :lose, paper: :win, scissors: :draw } 
  }.freeze

  def initialize(player1 = "Player 1", player2 = "Computer")
    @player1 = player1
    @player2 = player2
  end

  def get_outcome(player1_choice, player2_choice)
    outcome = WIN_MATRIX.dig(player1_choice, player2_choice)
    case outcome
    when :win
      "#{@player1} wins!"
    when :lose
      "#{@player2} wins!"
    when :draw
      "Draw!"
    end
  end
end
