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

  def select_winner(player: @player.move, opponent: @opponent.move)
    if player == opponent
      @winner = "No one"
    elsif player == 'rock' && opponent == 'paper'
      @winner = 'Player 2'
    elsif player == 'rock' && opponent == 'scissors'
      @winner = 'Player 1'
    elsif player == 'scissors' && opponent == 'rock'
      @winner = 'Player 2'
    elsif player == 'scissors' && opponent == 'paper'
      @winner = 'Player 1'
    elsif player == 'paper' && opponent == 'scissors'
      @winner = 'Player 2'
    elsif player == 'paper' && opponent == 'rock'
      @winner = 'Player 1'
    else 
      "this isn't working"
    end
  end

end
