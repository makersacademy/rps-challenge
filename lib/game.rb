class Game
  attr_reader :opponent_move, :player_move

  def initialize(player_move, opponent_move)
    @player_move = player_move
    @opponent_move = opponent_move
  end

  def winner
    if @player_move == @opponent_move
      "It's a draw!"
    elsif (@player_move == 'Rock' && @opponent_move == 'Paper') ||
      (@player_move == 'Scissors' && @opponent_move == 'Rock') ||
      (@player_move == 'Paper' && @opponent_move == 'Scissors')
      'You lose!'
    elsif (@player_move == 'Paper' && @opponent_move == 'Rock') ||
      (@player_move == 'Rock' && @opponent_move == 'Scissors') ||
      (@player_move == 'Scissors' && @opponent_move == 'Paper')
      'You win!'
    end
  end
end
