class Game

  attr_reader :moves

  def initialize
    @moves = ['rock', 'paper', 'scissors']
  end

  def random_move
    @moves.sample
  end

  def move_comparison(player_move, computer_move)
    if player_move == 'rock' && computer_move == 'scissors'
      return 'You Win'
    elsif player_move == 'paper' && computer_move == 'rock'
      return 'You Win'
    elsif player_move == 'scissors' && computer_move == 'paper'
      return 'You Win'
    elsif player_move == computer_move
      return 'Draw!'
    else
      return 'Computer Wins'
    end
  end
end
