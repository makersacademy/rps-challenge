class Win
  attr_reader :winner

  def find_winner(current, opponent)
    return nil unless hands_drawn?(current, opponent)
    return @winner = "Tie!" if current.hand == opponent.hand 
    current.wins_from.include? opponent.hand ? declare_winner(current) : declare_winner(opponent) 
  end

  private
  def hands_drawn?(current, opponent)
    current.hand && opponent.hand
  end

  def declare_winner(player)
    player.wins
    @winner = "#{player.name} wins!" 
  end
end
