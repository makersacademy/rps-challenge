class Result

  def initialize(player, cpu)
    @player = player
    @cpu = cpu
  end

  def determine
    if win?
      'You win!'
    elsif draw?
      "It's a draw!"
    else
      'You lost!'
    end
  end

  def win?
    @player == "✊" && @cpu == "✌️" ||
    @player == "🤚" && @cpu == "✊" ||
    @player == "✌️" && @cpu == "🤚"
  end

  def draw?
    @player == @cpu
  end

end
