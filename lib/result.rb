class CheckResult

  def initialize(player_choice, cpu_choice)
    @player_choice = player_choice
    @cpu_choice = cpu_choice
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
    @player_choice == "✊" && @cpu_choice == "✌️" ||
    @player_choice == "🤚" && @cpu_choice == "✊" ||
    @player_choice == "✌️" && @cpu_choice == "🤚"
  end

  def draw?
    @player_choice == @cpu_choice
  end

end
