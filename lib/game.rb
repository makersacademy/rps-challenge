class Game

  attr_reader :moves, :player_1, :computer_move, :points

  ZERO_POINTS = 0
  ONE_POINT = 1

  def initialize(player_1)
    @player_1 = player_1
    @moves = ['rock', 'paper', 'scissors']
    @points = ZERO_POINTS
    @computer_move = nil
  end

  def random_move
    @computer_move = @moves.sample
  end

  def move_comparison(player_move, computer_move)
    return 'You Win' if player_move == 'rock' && computer_move == 'scissors'
    return 'You Win' if player_move == 'paper' && computer_move == 'rock'
    return 'You Win' if player_move == 'scissors' && computer_move == 'paper'
    return 'Draw!' if player_move == computer_move
    'Computer Wins'
  end

  def gain_point
    @points += ONE_POINT
  end

## Using class methods
  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end

end
