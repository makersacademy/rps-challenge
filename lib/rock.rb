class Rock
  def beat?(opponents_weapon)
    if "Scissors" == opponents_weapon
      "Winner"
    elsif "Rock" == opponents_weapon
      "Draw"
    else
      "Machine"
  end
  end
end
