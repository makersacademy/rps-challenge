class Game

  def self.create(player, opponent)
    @game = Game.new(player, opponent)
  end

  def self.instance
    @game 
  end

  attr_reader :player, :opponent, :winner, :computer_move

  MOVES = ['rock', 'paper', 'scissors']

  def initialize(player, opponent)
    @player = player
    @opponent = opponent
  end

  # def computer_generator
  #   @computer_move = MOVES.sample
  # end

  def select_winner(player_1: @player.move, opponent: @opponent.move)
    if player_1 == opponent
      @winner = "No one"
    elsif player_1 == 'rock' && opponent == 'paper'
      @winner = 'Player 2'
    elsif player_1 == 'rock' && opponent == 'scissors'
      @winner = 'Player 1'
    elsif player_1 == 'scissors' && opponent == 'rock'
      @winner = 'Player 2'
    elsif player_1 == 'scissors' && opponent == 'paper'
      @winner = 'Player 1'
    elsif player_1 == 'paper' && opponent == 'scissors'
      @winner = 'Player 2'
    elsif player_1 == 'paper' && opponent == 'rock'
      @winner = 'Player 1'
    end
  end

end
