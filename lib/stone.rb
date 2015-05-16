class Stone
  def versus move
      if move.class == Scissors
        :win
      else
        :draw
      end
  end
end