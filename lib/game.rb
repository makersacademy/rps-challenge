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
    elsif @players[0].weapon == :Scissors && @players[1].weapon == :Paper
      return @players[0]
    elsif @players[0].weapon == :Paper && @players[1].weapon == :Scissors
      return @players[1]
    elsif @players[0].weapon == :Rock && @players[1].weapon == :Paper
      return @players[1]
    elsif @players[0].weapon == :Rock && @players[1].weapon == :Scissors
      return @players[0]
    elsif @players[0].weapon == @players[1].weapon
      return nil
    end
  end

end