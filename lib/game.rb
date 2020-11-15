class Game

  attr_reader :p1, :p2

  def initialize(p1_pick, p2_pick)
    @p1 = p1_pick
    @p2 = p2_pick
  end

  def result
    return 'draw' if @p1 == @p2
    if rock_win
        'rock'
    elsif scissors_win
        'scissors'
    elsif paper_win
        'paper'
    else
        'lose'
    end
  end

  def rock_win
    return 'true' if @p1 == 'rock' && @p2 == 'scissors'
  end

  def scissors_win
    return 'true' if @p1 == 'scissors' && @p2 == 'paper'
  end

  def paper_win
    return 'true' if @p1 == 'paper' && @p2 == 'rock'
  end
end
