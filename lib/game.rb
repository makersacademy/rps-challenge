class Game
  
  attr_accessor :players

  def add_player(player)
    players << player
  end

  def players
    @players ||= []
  end

  def winner
    case
    when @players[0].weapon == :Scissors && @players[1].weapon == :Rock
      return @players[1]
    when @players[0].weapon == :Paper && @players[1].weapon == :Rock
      return @players[0]
    when @players[0].weapon == :Scissors && @players[1].weapon == :Paper
      return @players[0]
    when @players[0].weapon == :Paper && @players[1].weapon == :Scissors
      return @players[1]
    when @players[0].weapon == :Rock && @players[1].weapon == :Paper
      return @players[1]
    when @players[0].weapon == :Rock && @players[1].weapon == :Scissors
      return @players[0]
    when @players[0].weapon == @players[1].weapon
      return nil
    end
  end

end