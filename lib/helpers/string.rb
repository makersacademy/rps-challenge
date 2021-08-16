module StringHelpers
  def victory_string(winner, player)
    return case winner
      when -1; "#{player} wins!"
      when 1; 'Robot wins!'
      when 0; 'Draw!'
      else
           end
  end

  def comparator_string(winner)
    return case winner
      when -1; '>'
      when 1; '<'
      when 0; '=='
      else
           end
  end
end
