class Game
  attr_reader :computer_move, :player_move

  def initialize(player_move, computer_move)
    @player_move = player_move
    @computer_move = computer_move
  end

  def winner
    if @player_move == @computer_move
      "Look's like it's a draw!"
    elsif (@player_move == 'Rock' && @computer_move == 'Paper') ||
      (@player_move == 'Scissors' && @computer_move == 'Rock') ||
      (@player_move == 'Paper' && @computer_move == 'Scissors')
      'Sorry! You lose!'
    elsif (@player_move == 'Paper' && @computer_move == 'Rock') ||
      (@player_move == 'Rock' && @computer_move == 'Scissors') ||
      (@player_move == 'Scissors' && @computer_move == 'Paper')
      'You win! :)'
    end
  end
end
