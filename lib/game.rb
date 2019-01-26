class Game
  attr_reader :players, :player1, :player2
  attr_reader :player1_move, :player2_move
  attr_reader :winner, :loser

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [@player1, @player2]
    @player1_move = nil
    @player2_move = nil
    @winner = nil
  end

  def make_move(player, move)
    @player1_move = player.make_move(move)
  end

  def computer_move      
    @player2_move = @player2.make_move
  end

  def calculate_winner
    if @player2_move == @player1_move
      @winner = nil
    elsif @player1_move == 'rock' && @player2_move == 'paper'
      @winner = @player2
    elsif @player1_move == 'rock' && @player2_move == 'scissors'
      @winner = @player1
    elsif @player1_move == 'paper' && @player2_move == 'rock'
      @winner = @player1
    elsif @player1_move == 'paper' && @player2_move == 'scissors'
      @winner = @player2
    elsif @player1_move == 'scissors' && @player2_move == 'rock'
      @winner = @player2
    elsif @player1_move == 'scissors' && @player2_move == 'paper'
      @winner = @player1    
    end
  end

  def loser
    @players.select { |player| player != @winner }.first
  end
  
end
