class GameLogic

  def calculate_win(player_num,opponent_num)

    if player_num == opponent_num
      return 'draw'
    elsif (player_num + 1) %  5 == opponent_num
      return 'win'
    elsif (player_num + 2) %  5 == opponent_num
      return 'lose'
    elsif (player_num + 3) %  5 == opponent_num
      return 'win'
    elsif (player_num + 4) %  5 == opponent_num
      return 'lose'
    end

  end

end
