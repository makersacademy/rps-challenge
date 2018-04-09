class Game

  def initialize
    @values = {"rock" => "scissors", "paper" => "rock", "scissors" => "paper"}
  end

  def result(player, comp)
    @player = player
    @comp = comp
    return "drew" if is_draw?
    return "won" if is_win?
    "lost"
  end

  private 

  def is_draw?
    @comp == @player
  end

  def is_win?
    @values.fetch(@player) == @comp
  end

end

