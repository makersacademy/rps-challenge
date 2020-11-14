class Game

  def play(weapon)
    comp_choice = ["rock", "paper", "scissors"].sample

    return "Draw" if draw?(weapon, comp_choice)

    return "Win" if win?(weapon, comp_choice)

    return "Loss"
  end

  private

  def draw?(weapon, comp_choice)
    weapon == comp_choice
  end

  def win?(weapon, comp_choice)
    rock_and_scissors?(weapon, comp_choice) || paper_and_rock?(weapon, comp_choice) || scissors_and_paper?(weapon, comp_choice)
  end

  def rock_and_scissors?(weapon, comp_choice)
    weapon == "rock" && comp_choice == "scissors"
  end

  def paper_and_rock?(weapon, comp_choice)
    weapon == "paper" && comp_choice == "rock"
  end

  def scissors_and_paper?(weapon, comp_choice)
    weapon == "scissors" && comp_choice == "paper"
  end
end
