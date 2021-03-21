class Turn_Result

  WEAPON_RIVALS = {
    "Rocking Rock": {"Rocking Rock": :draw, "Powerful Paper": :lose, "Slicing Scissors": :win},
    "Powerful Paper": {"Rocking Rock": :win, "Powerful Paper": :draw, "Slicing Scissors": :lose},
    "Slicing Scissors": {"Rocking Rock": :lose, "Powerful Paper": :win, "Slicing Scissors": :draw}
  }

  def win?
    result == :win
  end

  def lose?
    result == :lose
  end

  def draw?
    result == :draw
  end

  private

  def result
    return if @pc_weapon.nil?
    WEAPON_RIVALS[@weapon][@pc_weapon]
  end

end
