class Game

  attr_reader :move, :player_move, :computer_move

  def initialize(player_move)
    @move = ['Rock', 'Paper', 'Scissors']
    @player_move = player_move
    @computer_move = @move.sample
  end

  def winner
    return 'You win!' if @player_move == 'Rock' && @computer_move == 'Scissors'
    return 'Computer wins.' if @player_move == 'Scissors' && @computer_move == 'Rock'
  end

end
