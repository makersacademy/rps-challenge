class Game

  WIN_LOGIC = {
    'Rock' => 'Scissors',
    'Paper' => 'Rock',
    'Scissors' => 'Paper'
  }

  def result(player_weapon, computer_weapon)
    return 'win' if player_wins(player_weapon, computer_weapon)
    return 'lose' if player_loses(player_weapon, computer_weapon)
    'draw'
  end

  private

  def player_wins(player_weapon, computer_weapon)
    WIN_LOGIC[player_weapon] == computer_weapon
  end

  def player_loses(player_weapon, computer_weapon)
    WIN_LOGIC[computer_weapon] == player_weapon
  end

end
