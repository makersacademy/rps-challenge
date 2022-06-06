class FinalResult

  def initialize
    @rules = {
      Rock: { Rock: :draw, Paper: :lose, Scissors: :win },
      Paper: { Rock: :win, Paper: :draw, Scissors: :lose },
      Scissors: { Rock: :lose, Paper: :win, Scissors: :draw }
    }

    @result = []
  end

  def calculate(player_option, comp_option)
    player = player_option.to_sym
    comp = comp_option.to_sym
    @result = @rules[player][comp]
  end 

  def winner
    return "Congratulations! You won, you beat the computer!" if @result == :win
    return "Oh well, it's a draw!" if @result == :draw
    return "Oh no, you lost! Better luck next time!" if @result == :lose
  end
end 
