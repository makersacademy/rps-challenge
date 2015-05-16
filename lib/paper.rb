class Paper

  def versus(move)
      if move.class == Paper
      :draw
      elsif move.class == Scissors
      :loss
      else
      :win
    end
  end
end