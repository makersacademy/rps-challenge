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

  def select_winner
    player_move = @player.move
    opponent_move = @opponent.move

    if player_move == opponent.move
      @winner = "No one"
    elsif player_move == 'rock' && opponent_move == 'paper'
      @winner = @opponent
    elsif player_move == 'rock' && opponent_move == 'scissors'
      @winner = @player
    elsif player_move == 'scissors' && opponent_move == 'rock'
      @winner = @opponent
    elsif player_move == 'scissors' && opponent_move == 'paper'
      @winner = @player
    elsif player_move == 'paper' && opponent_move == 'scissors'
      @winner = @opponent
    elsif player_move == 'paper' && opponent_move == 'rock'
      @winner = @player
    end
  end

end
