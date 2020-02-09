class Game

  def self.create(player, opponent)
    @game = Game.new(player, opponent)
  end

  def self.instance
    @game 
  end

  attr_reader :player, :opponent, :winner

  MOVES = ['rock', 'paper', 'scissors']

  def initialize(player, opponent)
    @player = player
    @opponent = opponent
  end

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
    end
  end

end
