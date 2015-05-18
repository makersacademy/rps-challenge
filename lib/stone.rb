class Stone
  def versus move
    if move.class == Scissors
      :win
    elsif move.class == Paper
      :loss
    else
      :draw
    end
  end
end