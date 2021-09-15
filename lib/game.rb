class Game
  def initialize(player_choice, player_name, cpu_choice)
    @cpu_choice = cpu_choice
    @player_name = player_name
    @player_choice = player_choice
    @win_logic = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }
  end

  def results
    if @player_choice == @cpu_choice
      "It's a draw!"
    elsif @win_logic[@player_choice] == @cpu_choice
      "#{@player_name} wins!"
    else
      "Computer wins!"
    end
  end
end