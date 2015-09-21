class Game



  def computer_play
    [:rock,:paper,:scissors].sample
  end

  def play(player_choice)
    @comp = self.computer_play
      if player_choice == @comp
        :draw
      elsif player_win?(player_choice)
        :win
      elsif player_lose?(player_choice)
        :lose
      end
  end

  def player_win?(choice)
    true if choice == :rock && @comp == :scissors || choice == :paper && @comp == :rock || choice == :scissors && @comp == :paper
  end

  def player_lose?(choice)
    true if choice == :rock && @comp == :paper || choice == :paper && @comp == :scissors || choice == :scissors && @comp == :rock
  end

  def player_draw?(choice)
    true if choice == :rock && @comp == :rock || choice == :paper && @comp == :paper || choice == :scissors && @comp == :scissors
  end

  def opponent_play_win(winning_play)
    if winning_play == :rock
      :scissors
    elsif winning_play == :paper
      :rock
    elsif winning_play == :scissors
      :paper
    end
  end

  def opponent_play_lose(losing_play)
    if losing_play == :rock
      :paper
    elsif losing_play == :paper
      :scissors
    elsif losing_play == :scissors
      :rock
    end
  end

end
