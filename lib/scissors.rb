class Scissors
  def versus move
    if move.class == Paper
      :win
    else
      :draw
    end
  end
end