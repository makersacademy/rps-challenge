class RPSLogic

  def check(a_player, b_player)
    return 0 if a_player == b_player
    return 1 if (a_player == 'Rock' && b_player == 'Scissors')
    return 1 if (a_player == 'Scissors' && b_player == 'Paper')
    return 1 if (a_player == 'Paper' && b_player == 'Rock')
    
    return 2
  end
end
