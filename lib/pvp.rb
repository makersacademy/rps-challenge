class PvP

  attr_reader :player_1, :player_2, :p1_win, :draw

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @p1_win = false
    @draw = false
  end

#1 = Rock
# 2 = Paper
# 3 = Scissors

  def evaluate(p1_choice, p2_choice)
    if p1_choice == 1
      if p2_choice == 1
        @draw = true
      elsif p2_choice == 3
        @p1_win = true
      end
    elsif p1_choice == 2
      if p2_choice == 1
        @p1_win = true
      elsif p2_choice == 2
        @draw = true
      end
    elsif p1_choice == 3
      if p2_choice == 2
        @p1_win == true
      elsif p2_choice == 3
        @draw = true
      end
    end

  end

end
