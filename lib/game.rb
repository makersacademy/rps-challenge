class Game
  def initialize(beats)
    @beats = beats
  end

  def round(player1_choice, player2_choice)
    if @beats[player1_choice] == player2_choice
      :won
    elsif @beats[player2_choice] == player1_choice
      :lost
    elsif player1_choice == player2_choice
      :draw
    else
      :error
    end
  end

end
