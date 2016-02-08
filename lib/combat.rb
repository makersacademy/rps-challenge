class Combat
  def resolve(weapon_1, weapon_2)
    if weapon_1 == 'rock'
      rock_vs(weapon_2)
    elsif weapon_1 == 'paper'
      paper_vs(weapon_2)
    elsif weapon_1 == 'scissors'
      scissors_vs(weapon_2)
    end
  end

  def rock_vs(weapon_2)
    return 'Rock ties with rock!' if weapon_2 == 'rock'
    return 'Rock loses to paper!' if weapon_2 == 'paper'
    return 'Rock beats scissors!' if weapon_2 == 'scissors'
  end

  def paper_vs(weapon_2)
    return 'Paper beats rock!' if weapon_2 == 'rock'
    return 'Paper ties with paper!' if weapon_2 == 'paper'
    return 'Paper loses to scissors!' if weapon_2 == 'scissors'
  end

  def scissors_vs(weapon_2)
    return 'Scissors loses to rock!' if weapon_2 == 'rock'
    return 'Scissors beats paper!' if weapon_2 == 'paper'
    return 'Scissors ties with scissors!' if weapon_2 == 'scissors'
  end
end