class Game
  def initialize(beats)
    @beats = beats
  end

  def round(player_choice, computer_choice)
    if @beats[player_choice] == computer_choice
      :won
    elsif @beats[computer_choice] == player_choice
      :lost
    elsif player_choice == computer_choice
      :draw
    end
  end

end
