module GameLogic

  def pick_weapon
    ['rock', 'paper', 'scissors', 'lizard', 'spock'].sample
  end

  def determine_result(player1_choice, player2_choice = pick_weapon)
    save_choices(player1_choice, player2_choice)
    return @win = 'draw' if player1_choice == player2_choice

    case player1_choice
    when 'rock'
      return @win = true if player2_choice == 'scissors'
      return @win = true if player2_choice == 'lizard'
    when 'paper'
      return @win = true if player2_choice == 'rock'
      return @win = true if player2_choice == 'spock'
    when 'scissors'
      return @win = true if player2_choice == 'paper'
      return @win = true if player2_choice == 'lizard'
    when 'lizard'
      return @win = true if player2_choice == 'spock'
      return @win = true if player2_choice == 'paper'
    when 'spock'
      return @win = true if player2_choice == 'scissors'
      return @win = true if player2_choice == 'rock'
    end
    @win = false
  end

  def save_choices(player1, player2)
    @player1s_choice = player1
    @player2s_choice = player2
  end

  def game_reset
    @win = nil
    @players_choice = nil
    @computers_choice = nil
  end

end