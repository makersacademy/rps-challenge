class Paper
  def beat?(opponents_weapon)
    if "Rock" == opponents_weapon
      "Winner"
    elsif "Paper" == opponents_weapon
      "Draw"
    else
      "Machine"
    end
  end
end
