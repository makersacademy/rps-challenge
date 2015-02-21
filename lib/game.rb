class Game
  
  def add_player(player)
    players << player
  end

  def players
    @players ||= []
  end

  def winner
    if @players[0].weapon == :Scissors && @players[1].weapon == :Rock
      return @players[1]
    elsif @players[0].weapon == :Paper && @players[1].weapon == :Rock
      return @players[0]
    end
  end

end