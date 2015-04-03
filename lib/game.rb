module Game
  def result(move, other_choice)
    if beats[move.to_sym] == other_choice
      :win
    else
      move.to_sym == other_choice ? :draw : :lose
    end
  end

  def other_move
    beats.keys.sample
  end

  private

  def beats
    { rock: :scissors, scissors: :paper, paper: :rock }
  end
end
