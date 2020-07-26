class Game

  attr_reader :moves

  def initialize
    @moves = ['rock', 'paper', 'scissors']
  end

  def random_move
    @moves.sample
  end

  def move_comparison(player_move, computer_move)
    return 'You Win' if player_move == 'rock' && computer_move == 'scissors'
    return 'You Win' if player_move == 'paper' && computer_move == 'rock'
    return 'You Win' if player_move == 'scissors' && computer_move == 'paper'
    return 'Draw!' if player_move == computer_move
    'Computer Wins'
  end
end
