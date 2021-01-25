class RockPaperSissors

  def initialize(player_1, player_2)
        @player_1 = player_1
        @player_2 = player_2
  end

  def check_winner
    if @player_1 == @player_2
      return 'draw'
    elsif @player_1 == 'rock' && @player_2 == 'sissors' || @player_1 == 'sissors' && @player_2 == 'paper' || @player_1 == 'paper' && @player_2 == 'rock'
      @player_1
    else
      @player_2
    end
  end

end
