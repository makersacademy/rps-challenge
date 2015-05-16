class Paper

  def versus(move)
    if move.class == Paper
      :draw
    else
      :win
    end
  end

end