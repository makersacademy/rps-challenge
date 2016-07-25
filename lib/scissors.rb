class Scissors
  def beat?(opponents_weapon)
    if "Paper" == opponents_weapon
      "Winner"
    elsif "Scissors" == opponents_weapon
      "Draw"
    else
      "Machine"
    end
  end
end
