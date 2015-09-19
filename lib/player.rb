class Player

  attr_reader :current_selection

  def select(shape)
    @current_selection = shape
  end

  def clear_selection
    @current_selection = nil
  end

end