class Weapon
  RULES = { rock: :scissors, paper: :rock, scissors: :paper }

  def who_wins(player_choice, computer_choice)
    return :Draw if draw(player_choice, computer_choice)
    return :Win if winner(player_choice, computer_choice)
    return :Lost if !winner(player_choice, computer_choice)
  end

  def draw(player_choice, computer_choice)
    player_choice == computer_choice
  end

  def winner(player_choice, computer_choice)
    RULES[player_choice] == computer_choice
  end
end
