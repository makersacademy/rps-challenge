class Game

  attr_reader :moves, :player_1, :player_2, :computer_move, :points, :current_turn

  ZERO_POINTS = 0
  ONE_POINT = 1

  def initialize(player_1, player_2 = nil)
    @player_1 = player_1
    @player_2 = player_2
    @moves = ['rock', 'paper', 'scissors']
    @points = ZERO_POINTS
    @computer_move = nil
    @players = [@player_1, @player_2]
    @current_turn = @player_1
  end

  def self.create(player_1, player_2 = nil)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def random_move
    @computer_move = @moves.sample
  end

  def move_comparison(player_1_move, player_2_move)
    return 'You Win' if player_1_move == 'rock' && player_2_move == 'scissors'

    return 'You Win' if player_1_move == 'paper' && player_2_move == 'rock'

    return 'You Win' if player_1_move == 'scissors' && player_2_move == 'paper'

    return 'Draw!' if player_1_move == player_2_move
    
    'Player 2 wins'
  end

  def gain_point
    @points += ONE_POINT
  end

end
