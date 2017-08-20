
class Game

  def initialize(player, comp)
    @player = player
    @comp = comp
  end

  def outcome
    return "Draw!" if @player == @comp
    if @player == 'sissors' && @comp == 'paper'
      'Player wins!'
    elsif @player == 'paper' && @comp == 'rock'
      'Player wins!'
    elsif @player == 'rock' && @comp == 'sissors'
      'Player wins!'
    else
      'Computer wins, they\'re taking over!'
    end
  end

end
