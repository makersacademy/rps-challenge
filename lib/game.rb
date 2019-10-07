class Game
  def initialize(player_name, player_move)
    @player_name = player_name
    @player_move = player_move
  end

  def msg
    choose_winner
    if @draw
      draw_msg
    elsif @player_win
      win_msg
    elsif @comp_win
      lose_msg
    end
  end

private
  def draw_msg
    l_1 = @player_name + ' played ' + @player_move.upcase + ', '
    l_2 = 'computer played ' + @comp_move.upcase + '. '
    l_3 = @player_name + ' and computer DRAW!'
    l_1 + l_2 + l_3
  end

  def win_msg
    l_1 = @player_name + ' played ' + @player_move.upcase + ', '
    l_2 = 'computer played ' + @comp_move.upcase + '. '
    l_3 = @player_name.upcase + ' WINS!'
    l_1 + l_2 + l_3
  end

  def lose_msg
    l_1 = @player_name + ' played ' + @player_move.upcase + ', '
    l_2 = 'computer played ' + @comp_move.upcase + '. '
    l_3 = 'COMPUTER WINS!'
    l_1 + l_2 + l_3
  end

  def choose_winner
    play
    if @player_move == @comp_move
      @draw = true
    elsif @player_move == 'Rock' && @comp_move == 'Scissors'
      @player_win = true
    elsif @player_move == 'Rock' && @comp_move == 'Paper'
      @comp_win = true
    elsif @player_move == 'Paper' && @comp_move == 'Rock'
      @player_win = true
    elsif @player_move == 'Paper' && @comp_move == 'Scissors'
      @comp_win = true
    elsif @player_move == 'Scissors' && @comp_move == 'Rock'
      @comp_win = true
    elsif @player_move == 'Scissors' && @comp_move == 'Paper'
      @player_win = true
    end
  end

  def play
    @comp_move = ['Rock', 'Paper', 'Scissors'].sample
  end
end
