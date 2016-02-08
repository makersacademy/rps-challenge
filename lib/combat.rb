class Combat
  def resolve(player_weapon, ai_weapon)
    if player_weapon == 'rock'
      return 'Rock ties with rock!' if ai_weapon == 'rock'
      return 'Rock loses to paper!' if ai_weapon == 'paper'
      return 'Rock beats scissors!' if ai_weapon == 'scissors'
    elsif player_weapon == 'paper'
      return 'Paper beats rock!' if ai_weapon == 'rock'
      return 'Paper ties with paper!' if ai_weapon == 'paper'
      return 'Paper loses to scissors!' if ai_weapon == 'scissors'
    elsif player_weapon == 'scissors'
      return 'Scissors loses to rock!' if ai_weapon == 'rock'
      return 'Scissors beats paper!' if ai_weapon == 'paper'
      return 'Scissors ties with scissors!' if ai_weapon == 'scissors'
    end
  end
end