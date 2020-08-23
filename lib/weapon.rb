class Weapon
  RULES = { :Rock => :Rock, :Paper => :Paper, :Scissors => :Scissors }

  def who_wins(p_choice, c_choice)
    return "It's a draw!" if draw(p_choice, c_choice)
    return "You win!" if winner(p_choice, c_choice)
    return "You lose!" if lost(p_choice, c_choice)
  end

  def draw(p_choice, c_choice)
    p_choice == c_choice
  end

  def winner(p_choice, c_choice)
    # RULES[p_choice] == c_choice
    if RULES[p_choice] == :Rock && c_choice == :Scissors
      true
    elsif RULES[p_choice] == :Paper && c_choice == :Rock
      true
    elsif RULES[p_choice] == :Scissors && c_choice == :Paper
      true
    end
  end

  def lost(p_choice, c_choice)
    if RULES[p_choice] == :Scissors && c_choice == :Rock
      true
    elsif RULES[p_choice] == :Rock && c_choice == :Paper
      true
    elsif RULES[p_choice] == :Paper && c_choice == :Scissors
      true
    end
  end
end
