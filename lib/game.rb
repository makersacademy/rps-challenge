class Game
  attr_reader :players, :player1, :player2
  attr_reader :player1_move, :player2_move
  attr_reader :winner

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
    @arr = ['paper', 'rock', 'scissors']
    @player1_index = @arr.index(@player1_move)
    @player2_index = @arr.index(@player2_move)
    winner_logic(@player1_index, @player2_index)
  end

  def winner_logic(player1_index, player2_index)
    if player1_index == player2_index
      @winner = nil
    elsif (player1_index - player2_index) % 3 == 1
      @winner = player2
    else
      @winner = player1
    end
  end

  def loser
    @players.reject { |player| player == @winner }.first
  end
  
end
