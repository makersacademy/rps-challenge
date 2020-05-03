class Game

  attr_reader :move, :player_move, :computer_move

  def initialize(player_move)
    @move = ['Rock', 'Paper', 'Scissors']
    @player_move = player_move
    @computer_move = @move.sample
  end

  def winner
    return 'You win!' if @player_move == 'Rock' && @computer_move == 'Scissors' ||
                         @player_move == 'Paper' && @computer_move == 'Rock' ||
                         @player_move == 'Scissors' && @computer_move == 'Paper'
    return 'Computer wins.' if @player_move == 'Scissors' && @computer_move == 'Rock' ||
                               @player_move == 'Rock' && @computer_move == 'Paper' ||
                               @player_move == 'Paper' && @computer_move == 'Scissors'
    return 'Draw.' if @player_move == @computer_move
  end

end
