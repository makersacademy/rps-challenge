class Scissors
  def versus move
    if move.class == Paper
      :win
    elsif move.class == Stone
      :loss
    else
      :draw
    end
  end
end