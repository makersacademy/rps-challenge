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
      @winner = @opponent
    elsif player == 'rock' && opponent == 'scissors'
      @winner = @player
    elsif player == 'scissors' && opponent == 'rock'
      @winner = @opponent
    elsif player == 'scissors' && opponent == 'paper'
      @winner = @player
    elsif player == 'paper' && opponent == 'scissors'
      @winner = @opponent
    elsif player == 'paper' && opponent == 'rock'
      @winner = @player
    end
  end

end
