class Game

  def initialize(player_choice, player_name)
    @player_name = player_name
    @player_choice = player_choice
    @win_logic = { 'Scissors' => 'Paper', 'Paper' => 'Rock', 'Rock' => 'Scissors' }
    @cpu_choice = computer_choice
  end

  def cpu_choice
    @cpu_choice
  end

  def computer_choice
    random_num = rand(3)
    case random_num
    when 1
      choice = 'rock'
    when 2
      choice = 'paper'
    when 3
      choice = 'scissors'
    end
    return choice
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