module GameLogic

  def pick_weapon
    ['rock', 'paper', 'scissors', 'lizard', 'spock'].sample
  end

  def determine_result(choices = [])
    if choices.empty?
      if players == 1
        player2_choice = pick_weapon
        @pc_choice = player2_choice
      else
        player2_choice = @player2.choice
      end
      player1_choice = @player1.choice
    else
      player1_choice = choices[0]
      player2_choice = choices[1]
    end

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

  def game_reset
    @win = nil
    @player1.wipe_choice
    @player2.wipe_choice if players == 2
  end

end