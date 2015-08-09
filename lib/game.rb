class Game

  def result player_1_move, player_2_move
    options = ['Rock', 'Paper', 'Scissors']
    @player_1_move = player_1_move.capitalize
    @player_2_move = player_2_move.capitalize
    raise 'invalid options' unless options.include?(@player_1_move) &&  options.include?(@player_2_move)
    case
    when (@player_1_move == 'Rock' && @player_2_move == 'Scissors') || (@player_1_move == 'Scissors' && @player_2_move == 'Paper') || (@player_1_move == 'Paper' && @player_2_move == 'Rock')
      'player 1'
    when @player_1_move == @player_2_move
      'draw'
    else
      'player 2'
    end
  end
end
